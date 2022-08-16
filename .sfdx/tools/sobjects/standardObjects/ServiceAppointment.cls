// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ServiceAppointment {
    global Id Id;
    global SObject Owner;
    global Id OwnerId;
    global Boolean IsDeleted;
    global String AppointmentNumber;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global SObject ParentRecord;
    global Id ParentRecordId;
    global String ParentRecordType;
    global Account Account;
    global Id AccountId;
    global WorkType WorkType;
    global Id WorkTypeId;
    global Contact Contact;
    global Id ContactId;
    global String Street;
    global String City;
    global String State;
    global String PostalCode;
    global String Country;
    global Double Latitude;
    global Double Longitude;
    global String GeocodeAccuracy;
    global Address Address;
    global String Description;
    global Datetime EarliestStartTime;
    global Datetime DueDate;
    global Double Duration;
    global Datetime ArrivalWindowStartTime;
    global Datetime ArrivalWindowEndTime;
    global String Status;
    global Datetime SchedStartTime;
    global Datetime SchedEndTime;
    global Datetime ActualStartTime;
    global Datetime ActualEndTime;
    global Double ActualDuration;
    global String DurationType;
    global Double DurationInMinutes;
    global ServiceTerritory ServiceTerritory;
    global Id ServiceTerritoryId;
    global String Subject;
    global String ParentRecordStatusCategory;
    global String StatusCategory;
    global String ServiceNote;
    global String AppointmentType;
    global String Email;
    global String Phone;
    global String CancellationReason;
    global String AdditionalInformation;
    global String Comments;
    global List<ActivityHistory> ActivityHistories;
    global List<AssignedResource> ServiceResources;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<EmailMessage> Emails;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<Event> Events;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<ServiceAppointmentFeed> Feeds;
    global List<ServiceAppointmentHistory> Histories;
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global List<ContentVersion> FirstPublishLocation;
    global List<EventChangeEvent> What;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<TaskChangeEvent> What;

    global ServiceAppointment () 
    {
    }
}