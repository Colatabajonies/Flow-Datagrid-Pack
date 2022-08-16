// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ContactPointEmail {
    global Id Id;
    global SObject Owner;
    global Id OwnerId;
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
    global SObject Parent;
    global Id ParentId;
    global Date ActiveFromDate;
    global Date ActiveToDate;
    global Time BestTimeToContactEndTime;
    global Time BestTimeToContactStartTime;
    global String BestTimeToContactTimezone;
    global Boolean IsPrimary;
    global String EmailAddress;
    global String EmailMailBox;
    global String EmailDomain;
    global Datetime EmailLatestBounceDateTime;
    global String EmailLatestBounceReasonText;
    global List<ContactPointConsent> ContactPointConsents;
    global List<ContactPointEmailHistory> Histories;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<FlowRecordRelation> RelatedRecord;

    global ContactPointEmail () 
    {
    }
}