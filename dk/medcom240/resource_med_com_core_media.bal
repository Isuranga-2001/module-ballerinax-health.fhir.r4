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

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.

import ballerina/constraint;
import ballerinax/health.fhir.r4;

public const string PROFILE_BASE_MEDCOMCOREMEDIA = "http://medcomfhir.dk/ig/core/StructureDefinition/medcom-core-media";
public const RESOURCE_NAME_MEDCOMCOREMEDIA = "Media";

# FHIR MedComCoreMedia resource record.
#
# + resourceType - The type of the resource describes
# + note - Comments made about the media by the performer, subject or other participants.
# + partOf - A larger event of which this particular event is a component or step.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modality - Details of the type of the media - usually, how it was acquired (what type of device). If images sourced from a DICOM system, are wrapped in a Media resource, then this is the modality.
# + subject - Who/What this Media is a record of.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + createdDateTime - The date and time(s) at which the media was collected.
# + language - The base language in which the resource is written.
# + 'type - A code that classifies whether the media is an image, video or audio recording or some other media category.
# + deviceName - The name of the device / manufacturer of the device that was used to make the recording.
# + content - The actual content of the media - inline or by direct reference to the media source file.
# + operator - The person who administered the collection of the image.
# + duration - The duration of the recording in seconds - for audio and video.
# + view - The name of the imaging view e.g. Lateral or Antero-posterior (AP).
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + reasonCode - Describes why the event occurred in coded or textual form.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + issued - The date and time this version of the media was made available to providers, typically after having been reviewed.
# + basedOn - A procedure that is fulfilled in whole or in part by the creation of this media.
# + height - Height of the image in pixels (photo/video).
# + identifier - An identifier - identifies some entity uniquely and unambiguously. Typically this is used for business identifiers.
# + frames - The number of frames in a photo. This is used with a multi-page fax, or an imaging acquisition context that takes multiple slices in a single image, or an animated gif. If there is more than one frame, this SHALL have a value in order to alert interface software that a multi-frame capable rendering widget is required.
# + encounter - The encounter that establishes the context for this media.
# + createdPeriod - The date and time(s) at which the media was collected.
# + bodySite - Indicates the site on the subject's body where the observation was made (i.e. the target site).
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + width - Width of the image in pixels (photo/video).
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + device - The device used to collect the media.
# + status - The current state of the {{title}}.
@r4:ResourceDefinition {
    resourceType: "Media",
    baseType: r4:DomainResource,
    profile: "http://medcomfhir.dk/ig/core/StructureDefinition/medcom-core-media",
    elements: {
        "note": {
            name: "note",
            dataType: r4:Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.note"
        },
        "partOf": {
            name: "partOf",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.partOf"
        },
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.extension"
        },
        "modality": {
            name: "modality",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.modality",
            valueSet: "http://hl7.org/fhir/ValueSet/media-modality"
        },
        "subject": {
            name: "subject",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.subject"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.modifierExtension"
        },
        "createdDateTime": {
            name: "createdDateTime",
            dataType: r4:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.created[x]"
        },
        "language": {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "type": {
            name: "type",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.type",
            valueSet: "http://hl7.org/fhir/ValueSet/media-type"
        },
        "deviceName": {
            name: "deviceName",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.deviceName"
        },
        "content": {
            name: "content",
            dataType: MedComCoreMediaContent,
            min: 1,
            max: 1,
            isArray: false,
            path: "Media.content"
        },
        "operator": {
            name: "operator",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.operator"
        },
        "duration": {
            name: "duration",
            dataType: decimal,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.duration"
        },
        "view": {
            name: "view",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.view",
            valueSet: "http://hl7.org/fhir/ValueSet/media-view"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.id"
        },
        "reasonCode": {
            name: "reasonCode",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.reasonCode",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-reason"
        },
        "text": {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.text"
        },
        "issued": {
            name: "issued",
            dataType: r4:instant,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.issued"
        },
        "basedOn": {
            name: "basedOn",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.basedOn"
        },
        "height": {
            name: "height",
            dataType: r4:positiveInt,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.height"
        },
        "identifier": {
            name: "identifier",
            dataType: r4:Identifier,
            min: 1,
            max: 1,
            isArray: true,
            path: "Media.identifier"
        },
        "frames": {
            name: "frames",
            dataType: r4:positiveInt,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.frames"
        },
        "encounter": {
            name: "encounter",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.encounter"
        },
        "createdPeriod": {
            name: "createdPeriod",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.created[x]"
        },
        "bodySite": {
            name: "bodySite",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.bodySite",
            valueSet: "http://hl7.org/fhir/ValueSet/body-site"
        },
        "contained": {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Media.contained"
        },
        "meta": {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.meta"
        },
        "width": {
            name: "width",
            dataType: r4:positiveInt,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.width"
        },
        "implicitRules": {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.implicitRules"
        },
        "device": {
            name: "device",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Media.device"
        },
        "status": {
            name: "status",
            dataType: MedComCoreMediaStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "Media.status",
            valueSet: "http://hl7.org/fhir/ValueSet/event-status|4.0.1"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type MedComCoreMedia record {|
    *r4:DomainResource;

    RESOURCE_NAME_MEDCOMCOREMEDIA resourceType = RESOURCE_NAME_MEDCOMCOREMEDIA;

    r4:Annotation[] note?;
    r4:Reference[] partOf?;
    r4:Extension[] extension?;
    r4:CodeableConcept modality?;
    r4:Reference subject?;
    r4:Extension[] modifierExtension?;
    r4:dateTime createdDateTime?;
    r4:code language?;
    r4:CodeableConcept 'type?;
    string deviceName?;
    MedComCoreMediaContent content;
    r4:Reference operator?;
    decimal duration?;
    r4:CodeableConcept view?;
    string id?;
    r4:CodeableConcept[] reasonCode?;
    r4:Narrative text?;
    r4:instant issued?;
    r4:Reference[] basedOn?;
    r4:positiveInt height?;
    @constraint:Array {
        minLength: {
            value: 1,
            message: "Validation failed for $.Media.identifier constraint. This field must be an array containing at least one item."
        },
        maxLength: {
            value: 1,
            message: "Validation failed for $.Media.identifier constraint. This field must be an array containing at most one item."
        }
    }
    MedcomAssignedIdentifier[] identifier;
    r4:positiveInt frames?;
    r4:Reference encounter?;
    r4:Period createdPeriod?;
    r4:CodeableConcept bodySite?;
    r4:Resource[] contained?;
    r4:Meta meta?;
    r4:positiveInt width?;
    r4:uri implicitRules?;
    r4:Reference device?;
    MedComCoreMediaStatus status;
    r4:Element...;
|};

# FHIR MedComCoreMediaContent datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + data - The actual data of the attachment - a sequence of bytes, base64 encoded.
# + size - The number of bytes of data that make up this attachment (before base64 encoding, if that is done).
# + language - The human language of the content. The value can be any valid value according to BCP 47.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + title - A label or set of text to display in place of the data.
# + contentType - Identifies the type of the data in the attachment and allows a method to be chosen to interpret or render the data. Includes mime type parameters such as charset where appropriate.
# + creation - The date that the attachment was first created.
# + hash - The calculated hash of the data using SHA-1. Represented using base64.
# + url - A location where the data can be accessed.
@r4:DataTypeDefinition {
    name: "MedComCoreMediaContent",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Media.content.extension"
        },
        "data": {
            name: "data",
            dataType: r4:base64Binary,
            min: 0,
            max: 1,
            isArray: false,
            description: "The actual data of the attachment - a sequence of bytes, base64 encoded.",
            path: "Media.content.data"
        },
        "size": {
            name: "size",
            dataType: r4:unsignedInt,
            min: 0,
            max: 1,
            isArray: false,
            description: "The number of bytes of data that make up this attachment (before base64 encoding, if that is done).",
            path: "Media.content.size"
        },
        "language": {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            description: "The human language of the content. The value can be any valid value according to BCP 47.",
            path: "Media.content.language"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Media.content.id"
        },
        "title": {
            name: "title",
            dataType: string,
            min: 1,
            max: 1,
            isArray: false,
            description: "A label or set of text to display in place of the data.",
            path: "Media.content.title"
        },
        "contentType": {
            name: "contentType",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identifies the type of the data in the attachment and allows a method to be chosen to interpret or render the data. Includes mime type parameters such as charset where appropriate.",
            path: "Media.content.contentType"
        },
        "creation": {
            name: "creation",
            dataType: r4:dateTime,
            min: 1,
            max: 1,
            isArray: false,
            description: "The date that the attachment was first created.",
            path: "Media.content.creation"
        },
        "hash": {
            name: "hash",
            dataType: r4:base64Binary,
            min: 0,
            max: 1,
            isArray: false,
            description: "The calculated hash of the data using SHA-1. Represented using base64.",
            path: "Media.content.hash"
        },
        "url": {
            name: "url",
            dataType: r4:urlType,
            min: 0,
            max: 1,
            isArray: false,
            description: "A location where the data can be accessed.",
            path: "Media.content.url"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type MedComCoreMediaContent record {|
    *r4:Attachment;

    r4:Extension[] extension?;
    r4:base64Binary data?;
    r4:unsignedInt size?;
    r4:code language?;
    string id?;
    string title;
    r4:code contentType?;
    r4:dateTime creation;
    r4:base64Binary hash?;
    r4:urlType url?;
|};

# MedComCoreMediaStatus enum
public enum MedComCoreMediaStatus {
    CODE_STATUS_STOPPED = "stopped",
    CODE_STATUS_COMPLETED = "completed",
    CODE_STATUS_NOT_DONE = "not-done",
    CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
    CODE_STATUS_IN_PROGRESS = "in-progress",
    CODE_STATUS_ON_HOLD = "on-hold",
    CODE_STATUS_PREPARATION = "preparation",
    CODE_STATUS_UNKNOWN = "unknown"
}

