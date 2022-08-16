// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Solution {
    global Id Id;
    global Boolean IsDeleted;
    global String SolutionNumber;
    global String SolutionName;
    global Boolean IsPublished;
    global Boolean IsPublishedInPublicKb;
    global String Status;
    global Boolean IsReviewed;
    global String SolutionNote;
    global User Owner;
    global Id OwnerId;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Integer TimesUsed;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global Boolean IsHtml;
    global List<ActivityHistory> ActivityHistories;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global List<CaseSolution> CaseSolutions;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<EmailMessage> Emails;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<Event> Events;
    global List<OpenActivity> OpenActivities;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<SolutionFeed> Feeds;
    global List<SolutionHistory> Histories;
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global List<Vote> Votes;
    global List<CategoryData> RelatedSobject;
    global List<ContentVersion> FirstPublishLocation;
    global List<EventChangeEvent> What;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<TaskChangeEvent> What;

    global Solution () 
    {
    }
}