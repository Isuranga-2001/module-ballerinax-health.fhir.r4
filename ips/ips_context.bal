// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.
import ballerinax/health.clients.fhir;

public isolated class IPSContext {
    // Map of FHIR service URLs to their initialized FHIR clients
    private map<fhir:FHIRConnector> fhirClients = {};

    // Map of IPS section to section config (configurable, with default per IPS IG)
    private final IpsSectionConfig[] ipsSectionConfig;

    # Initializes the `IPSContext` instance with FHIR service-resource mapping, section-resource configuration, and section codes.
    #
    # + serviceResourceMap - Map of FHIR resource types to their corresponding service URLs.
    # + ipsSectionConfig - (optional) Array of section configuration objects for IPS sections. If not provided, defaults are used.
    # + return - An `error` if initialization fails, otherwise nil.
    public isolated function init(
            map<string> serviceResourceMap,
            IpsSectionConfig[]? ipsSectionConfig = ()
    ) returns error? {
        self.ipsSectionConfig = ipsSectionConfig is IpsSectionConfig[] ? ipsSectionConfig.clone() : DEFAULT_SECTION_RESOURCE_CONFIG;

        // Initialize FHIR clients for each service URL (reuse connectors for duplicate URLs)
        map<string> serviceMap = serviceResourceMap;
        map<fhir:FHIRConnector> urlToConnector = {};
        foreach string resourceType in serviceMap.keys() {
            string? serviceUrl = serviceMap[resourceType];
            if serviceUrl is string {
                lock {
                    if urlToConnector.hasKey(serviceUrl) {
                        fhir:FHIRConnector? fhirConnector = urlToConnector[serviceUrl];
                        if fhirConnector is fhir:FHIRConnector {
                            self.fhirClients[resourceType] = fhirConnector;
                            continue; // Skip to next resource type if already initialized
                        } else {
                            _ = urlToConnector.remove(serviceUrl); // Remove invalid connector
                        }
                    }
                    fhir:FHIRConnector fhirConnector = check new ({baseURL: serviceUrl}, enableCapabilityStatementValidation = false);
                    self.fhirClients[resourceType] = fhirConnector;
                    urlToConnector[serviceUrl] = fhirConnector;
                }
            }
        }
        urlToConnector.removeAll();
    }

    # Get the section-resource config (section to section configs)
    # + return - Map of section names to section config
    public isolated function getSectionConfigs() returns IpsSectionConfig[] {
        lock {
            return self.ipsSectionConfig.cloneReadOnly();
        }
    }

    # Get the FHIR client for a given resource type.
    # + resourceType - The resource type to get the client for
    # + return - The FHIR client instance or error if not found
    public isolated function getFHIRClient(string resourceType) returns fhir:FHIRConnector|error {
        lock {
            if self.fhirClients.hasKey(resourceType) {
                fhir:FHIRConnector? clientOpt = self.fhirClients[resourceType];
                if clientOpt is fhir:FHIRConnector {
                    return clientOpt;
                }
            }
        }
        return error("FHIR client not found for service: " + resourceType);
    }

    isolated function createFHIRConnector(string serviceUrl) returns fhir:FHIRConnector|error {
        fhir:FHIRConnector fhirConnector = check new (
            {
                baseURL: serviceUrl
            }, 
            enableCapabilityStatementValidation = false
        );
        return fhirConnector;
    }
}
