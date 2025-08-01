// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

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

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.

import ballerina/constraint;
import ballerinax/health.fhir.r4;

public const string PROFILE_BASE_PICO_ELEMENT_PROFILE = "http://hl7.org/fhir/StructureDefinition/picoelement";
public const RESOURCE_NAME_PICO_ELEMENT_PROFILE = "EvidenceVariable";

# FHIR PICO_Element_Profile resource record.
#
# + resourceType - The type of the resource describes
# + date - The date (and optionally time) when the evidence variable was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the evidence variable changes.
# + note - A human-readable string to clarify or explain concepts about the resource.
# + copyright - A copyright statement relating to the evidence variable and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the evidence variable.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + approvalDate - The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
# + jurisdiction - A legal or geographic region in which the evidence variable is intended to be used.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - A free text natural language description of the evidence variable from a consumer's perspective.
# + language - The base language in which the resource is written.
# + shortTitle - The short title provides an alternate title for use in informal descriptive contexts where the full, formal title is not necessary.
# + title - A short, descriptive, user-friendly title for the evidence variable.
# + 'type - The type of evidence element, a population, an exposure, or an outcome.
# + characteristic - A characteristic that defines the members of the evidence element. Multiple characteristics are applied with 'and' semantics.
# + contact - Contact details to assist a user in finding and communicating with the publisher.
# + endorser - An individual or organization responsible for officially endorsing the content for use in some setting.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + editor - An individual or organization primarily responsible for internal coherence of the content.
# + identifier - A formal identifier that is used to identify this evidence variable when it is represented in other formats, or referenced in a specification, model, design or an instance.
# + relatedArtifact - Related artifacts such as additional documentation, justification, or bibliographic references.
# + effectivePeriod - The period during which the evidence variable content was or is planned to be in active use.
# + author - An individiual or organization primarily involved in the creation and maintenance of the content.
# + reviewer - An individual or organization primarily responsible for review of some aspect of the content.
# + 'version - The identifier that is used to identify this version of the evidence variable when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the evidence variable author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active artifacts.
# + url - An absolute URI that is used to identify this evidence variable when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this evidence variable is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the evidence variable is stored on different servers.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + lastReviewDate - The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + subtitle - An explanatory or alternate title for the EvidenceVariable giving additional information about its content.
# + name - A natural language name identifying the evidence variable. This name should be usable as an identifier for the module by machine processing applications such as code generation.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + publisher - The name of the organization or individual that published the evidence variable.
# + topic - Descriptive topics related to the content of the EvidenceVariable. Topics provide a high-level categorization grouping types of EvidenceVariables that can be useful for filtering and searching.
# + useContext - The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate evidence variable instances.
# + status - The status of this evidence variable. Enables tracking the life-cycle of the content.
@r4:ResourceDefinition {
    resourceType: "EvidenceVariable",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/picoelement",
    elements: {
        "date" : {
            name: "date",
            dataType: r4:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.date"
        },
        "note" : {
            name: "note",
            dataType: r4:Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.note"
        },
        "copyright" : {
            name: "copyright",
            dataType: r4:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.copyright"
        },
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.extension"
        },
        "approvalDate" : {
            name: "approvalDate",
            dataType: r4:date,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.approvalDate"
        },
        "jurisdiction" : {
            name: "jurisdiction",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.jurisdiction",
            valueSet: "http://hl7.org/fhir/ValueSet/jurisdiction"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.modifierExtension"
        },
        "description" : {
            name: "description",
            dataType: r4:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.description"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "shortTitle" : {
            name: "shortTitle",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.shortTitle"
        },
        "title" : {
            name: "title",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.title"
        },
        "type" : {
            name: "type",
            dataType: PICO_Element_ProfileType,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.type",
            valueSet: "http://hl7.org/fhir/ValueSet/variable-type|4.0.1"
        },
        "characteristic" : {
            name: "characteristic",
            dataType: PICO_Element_ProfileCharacteristic,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.characteristic"
        },
        "contact" : {
            name: "contact",
            dataType: r4:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.contact"
        },
        "endorser" : {
            name: "endorser",
            dataType: r4:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.endorser"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.id"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.text"
        },
        "editor" : {
            name: "editor",
            dataType: r4:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.editor"
        },
        "identifier" : {
            name: "identifier",
            dataType: r4:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.identifier"
        },
        "relatedArtifact" : {
            name: "relatedArtifact",
            dataType: r4:RelatedArtifact,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.relatedArtifact"
        },
        "effectivePeriod" : {
            name: "effectivePeriod",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.effectivePeriod"
        },
        "author" : {
            name: "author",
            dataType: r4:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.author"
        },
        "reviewer" : {
            name: "reviewer",
            dataType: r4:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.reviewer"
        },
        "version" : {
            name: "version",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.version"
        },
        "url" : {
            name: "url",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.url"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.contained"
        },
        "lastReviewDate" : {
            name: "lastReviewDate",
            dataType: r4:date,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.lastReviewDate"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.meta"
        },
        "subtitle" : {
            name: "subtitle",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.subtitle"
        },
        "name" : {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.name"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.implicitRules"
        },
        "publisher" : {
            name: "publisher",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.publisher"
        },
        "topic" : {
            name: "topic",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.topic",
            valueSet: "http://hl7.org/fhir/ValueSet/definition-topic"
        },
        "useContext" : {
            name: "useContext",
            dataType: r4:UsageContext,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EvidenceVariable.useContext"
        },
        "status" : {
            name: "status",
            dataType: PICO_Element_ProfileStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "EvidenceVariable.status",
            valueSet: "http://hl7.org/fhir/ValueSet/publication-status|4.0.1"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type PICO_Element_Profile record {|
    *r4:DomainResource;

    RESOURCE_NAME_PICO_ELEMENT_PROFILE resourceType = RESOURCE_NAME_PICO_ELEMENT_PROFILE;

    r4:dateTime date?;
    r4:Annotation[] note?;
    r4:markdown copyright?;
    r4:Extension[] extension?;
    r4:date approvalDate?;
    r4:CodeableConcept[] jurisdiction?;
    r4:Extension[] modifierExtension?;
    r4:markdown description?;
    r4:code language?;
    string shortTitle?;
    string title?;
    PICO_Element_ProfileType 'type?;
    @constraint:Array {
       minLength: 1
    }
    PICO_Element_ProfileCharacteristic[] characteristic;
    r4:ContactDetail[] contact?;
    r4:ContactDetail[] endorser?;
    string id?;
    r4:Narrative text?;
    r4:ContactDetail[] editor?;
    r4:Identifier[] identifier?;
    r4:RelatedArtifact[] relatedArtifact?;
    r4:Period effectivePeriod?;
    r4:ContactDetail[] author?;
    r4:ContactDetail[] reviewer?;
    string 'version?;
    r4:uri url?;
    r4:Resource[] contained?;
    r4:date lastReviewDate?;
    r4:Meta meta?;
    string subtitle?;
    string name?;
    r4:uri implicitRules?;
    string publisher?;
    r4:CodeableConcept[] topic?;
    r4:UsageContext[] useContext?;
    PICO_Element_ProfileStatus status;
    r4:Element ...;
|};

# PICO_Element_ProfileStatus enum
public enum PICO_Element_ProfileStatus {
   CODE_STATUS_DRAFT = "draft",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_RETIRED = "retired",
   CODE_STATUS_UNKNOWN = "unknown"
}

# PICO_Element_ProfileType enum
public enum PICO_Element_ProfileType {
   CODE_TYPE_CONTINUOUS = "continuous",
   CODE_TYPE_DESCRIPTIVE = "descriptive",
   CODE_TYPE_DICHOTOMOUS = "dichotomous"
}

# PICO_Element_ProfileCharacteristicGroupMeasure enum
public enum PICO_Element_ProfileCharacteristicGroupMeasure {
   CODE_GROUPMEASURE_MEAN_OF_MEDIAN = "mean-of-median",
   CODE_GROUPMEASURE_MEDIAN = "median",
   CODE_GROUPMEASURE_MEAN = "mean",
   CODE_GROUPMEASURE_MEDIAN_OF_MEDIAN = "median-of-median",
   CODE_GROUPMEASURE_MEDIAN_OF_MEAN = "median-of-mean",
   CODE_GROUPMEASURE_MEAN_OF_MEAN = "mean-of-mean"
}

# FHIR PICO_Element_ProfileCharacteristic datatype record.
#
# + participantEffectiveTiming - Indicates what effective period the study covers.
# + definitionCodeableConcept - Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
# + participantEffectivePeriod - Indicates what effective period the study covers.
# + usageContext - Use UsageContext to define the members of the population, such as Age Ranges, Genders, Settings.
# + definitionCanonical - Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + definitionDataRequirement - Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
# + groupMeasure - Indicates how elements are aggregated within the study effective period.
# + participantEffectiveDateTime - Indicates what effective period the study covers.
# + timeFromStart - Indicates duration from the participant's study entry.
# + definitionReference - Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - A short, natural language description of the characteristic that could be used to communicate the criteria to an end-user.
# + definitionExpression - Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
# + definitionTriggerDefinition - Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
# + exclude - When true, members with this characteristic are excluded from the element.
# + participantEffectiveDuration - Indicates what effective period the study covers.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r4:DataTypeDefinition {
    name: "PICO_Element_ProfileCharacteristic",
    baseType: (),
    elements: {
        "participantEffectiveTiming": {
            name: "participantEffectiveTiming",
            dataType: r4:Timing,
            min: 0,
            max: 1,
            isArray: false,
            description: "Indicates what effective period the study covers.",
            path: "EvidenceVariable.characteristic.participantEffective[x]"
        },
        "definitionCodeableConcept": {
            name: "definitionCodeableConcept",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).",
            path: "EvidenceVariable.characteristic.definition[x]"
        },
        "participantEffectivePeriod": {
            name: "participantEffectivePeriod",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "Indicates what effective period the study covers.",
            path: "EvidenceVariable.characteristic.participantEffective[x]"
        },
        "usageContext": {
            name: "usageContext",
            dataType: r4:UsageContext,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Use UsageContext to define the members of the population, such as Age Ranges, Genders, Settings.",
            path: "EvidenceVariable.characteristic.usageContext"
        },
        "definitionCanonical": {
            name: "definitionCanonical",
            dataType: r4:canonical,
            min: 0,
            max: 1,
            isArray: false,
            description: "Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).",
            path: "EvidenceVariable.characteristic.definition[x]"
        },
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "EvidenceVariable.characteristic.extension"
        },
        "definitionDataRequirement": {
            name: "definitionDataRequirement",
            dataType: r4:DataRequirement,
            min: 0,
            max: 1,
            isArray: false,
            description: "Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).",
            path: "EvidenceVariable.characteristic.definition[x]"
        },
        "groupMeasure": {
            name: "groupMeasure",
            dataType: PICO_Element_ProfileCharacteristicGroupMeasure,
            min: 0,
            max: 1,
            isArray: false,
            description: "Indicates how elements are aggregated within the study effective period.",
            path: "EvidenceVariable.characteristic.groupMeasure"
        },
        "participantEffectiveDateTime": {
            name: "participantEffectiveDateTime",
            dataType: r4:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            description: "Indicates what effective period the study covers.",
            path: "EvidenceVariable.characteristic.participantEffective[x]"
        },
        "timeFromStart": {
            name: "timeFromStart",
            dataType: r4:Duration,
            min: 0,
            max: 1,
            isArray: false,
            description: "Indicates duration from the participant's study entry.",
            path: "EvidenceVariable.characteristic.timeFromStart"
        },
        "definitionReference": {
            name: "definitionReference",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).",
            path: "EvidenceVariable.characteristic.definition[x]"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "EvidenceVariable.characteristic.modifierExtension"
        },
        "description": {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "A short, natural language description of the characteristic that could be used to communicate the criteria to an end-user.",
            path: "EvidenceVariable.characteristic.description"
        },
        "definitionExpression": {
            name: "definitionExpression",
            dataType: r4:Expression,
            min: 0,
            max: 1,
            isArray: false,
            description: "Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).",
            path: "EvidenceVariable.characteristic.definition[x]"
        },
        "definitionTriggerDefinition": {
            name: "definitionTriggerDefinition",
            dataType: r4:TriggerDefinition,
            min: 0,
            max: 1,
            isArray: false,
            description: "Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).",
            path: "EvidenceVariable.characteristic.definition[x]"
        },
        "exclude": {
            name: "exclude",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            description: "When true, members with this characteristic are excluded from the element.",
            path: "EvidenceVariable.characteristic.exclude"
        },
        "participantEffectiveDuration": {
            name: "participantEffectiveDuration",
            dataType: r4:Duration,
            min: 0,
            max: 1,
            isArray: false,
            description: "Indicates what effective period the study covers.",
            path: "EvidenceVariable.characteristic.participantEffective[x]"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "EvidenceVariable.characteristic.id"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type PICO_Element_ProfileCharacteristic record {|
    *r4:BackboneElement;

    r4:Timing participantEffectiveTiming?;
    r4:CodeableConcept definitionCodeableConcept;
    r4:Period participantEffectivePeriod?;
    r4:UsageContext[] usageContext?;
    r4:canonical definitionCanonical;
    r4:Extension[] extension?;
    r4:DataRequirement definitionDataRequirement;
    PICO_Element_ProfileCharacteristicGroupMeasure groupMeasure?;
    r4:dateTime participantEffectiveDateTime?;
    r4:Duration timeFromStart?;
    r4:Reference definitionReference;
    r4:Extension[] modifierExtension?;
    string description?;
    r4:Expression definitionExpression;
    r4:TriggerDefinition definitionTriggerDefinition;
    boolean exclude?;
    r4:Duration participantEffectiveDuration?;
    string id?;
|};

