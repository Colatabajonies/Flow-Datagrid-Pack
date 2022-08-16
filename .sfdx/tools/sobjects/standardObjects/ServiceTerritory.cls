// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ServiceTerritory {
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
    global ServiceTerritory ParentTerritory;
    global Id ParentTerritoryId;
    global ServiceTerritory TopLevelTerritory;
    global Id TopLevelTerritoryId;
    global String Description;
    global OperatingHours OperatingHours;
    global Id OperatingHoursId;
    global String Street;
    global String City;
    global String State;
    global String PostalCode;
    global String Country;
    global Double Latitude;
    global Double Longitude;
    global String GeocodeAccuracy;
    global Address Address;
    global Boolean IsActive;
    global Double TypicalInTerritoryTravelTime;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<ServiceAppointment> ServiceAppointments;
    global List<ServiceTerritory> ChildServiceTerritories;
    global List<ServiceTerritory> DescendantTerritories;
    global List<ServiceTerritoryFeed> Feeds;
    global List<ServiceTerritoryHistory> Histories;
    global List<ServiceTerritoryMember> ServiceResources;
    global List<ServiceTerritoryWorkType> ServiceTerritories;
    global List<TopicAssignment> TopicAssignments;
    global List<ContentVersion> FirstPublishLocation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;

    global ServiceTerritory () 
    {
    }
}