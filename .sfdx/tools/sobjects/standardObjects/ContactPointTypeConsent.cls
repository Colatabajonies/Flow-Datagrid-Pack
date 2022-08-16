// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ContactPointTypeConsent {
    global Id Id;
    global Boolean IsDeleted;
    global String Name;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global Individual Party;
    global Id PartyId;
    global String ContactPointType;
    global DataUsePurpose DataUsePurpose;
    global Id DataUsePurposeId;
    global String PrivacyConsentStatus;
    global Datetime EffectiveFrom;
    global Datetime EffectiveTo;
    global Datetime CaptureDate;
    global String CaptureContactPointType;
    global String CaptureSource;
    global Datetime DoubleConsentCaptureDate;
    global List<ContactPointTypeConsentHistory> Histories;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<ContactPointConsent> ContactPointTypeConsent;
    global List<FlowRecordRelation> RelatedRecord;

    global ContactPointTypeConsent () 
    {
    }
}