// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Campaign {
    global Id Id;
    global Boolean IsDeleted;
    global String Name;
    global Campaign Parent;
    global Id ParentId;
    global String Type;
    global String Status;
    global Date StartDate;
    global Date EndDate;
    global Decimal ExpectedRevenue;
    global Decimal BudgetedCost;
    global Decimal ActualCost;
    global Double ExpectedResponse;
    global Double NumberSent;
    global Boolean IsActive;
    global String Description;
    global Integer NumberOfLeads;
    global Integer NumberOfConvertedLeads;
    global Integer NumberOfContacts;
    global Integer NumberOfResponses;
    global Integer NumberOfOpportunities;
    global Integer NumberOfWonOpportunities;
    global Decimal AmountAllOpportunities;
    global Decimal AmountWonOpportunities;
    global User Owner;
    global Id OwnerId;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Date LastActivityDate;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global RecordType CampaignMemberRecordType;
    global Id CampaignMemberRecordTypeId;
    global List<ActivityHistory> ActivityHistories;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global List<Campaign> ChildCampaigns;
    global List<CampaignFeed> Feeds;
    global List<CampaignHistory> Histories;
    global List<CampaignMember> CampaignMembers;
    global List<CampaignMemberStatus> CampaignMemberStatuses;
    global List<CampaignShare> Shares;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<EmailMessage> Emails;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<Event> Events;
    global List<ListEmail> ListEmails;
    global List<ListEmailRecipientSource> ListEmailRecipientSources;
    global List<OpenActivity> OpenActivities;
    global List<Opportunity> Opportunities;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global List<CampaignChangeEvent> Parent;
    global List<CampaignMemberChangeEvent> Campaign;
    global List<ContentDistribution> RelatedRecord;
    global List<ContentVersion> FirstPublishLocation;
    global List<EventChangeEvent> What;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<ListEmailChangeEvent> Campaign;
    global List<OutgoingEmail> RelatedTo;
    global List<TaskChangeEvent> What;

    global Campaign () 
    {
    }
}