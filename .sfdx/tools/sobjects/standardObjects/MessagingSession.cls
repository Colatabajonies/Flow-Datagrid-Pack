// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class MessagingSession {
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
    global MessagingChannel MessagingChannel;
    global Id MessagingChannelId;
    global MessagingEndUser MessagingEndUser;
    global Id MessagingEndUserId;
    global String Status;
    global Datetime AcceptTime;
    global Datetime StartTime;
    global Datetime EndTime;
    global String Origin;
    global String AgentType;
    global String SessionKey;
    global User TargetUser;
    global Id TargetUserId;
    global String ChannelGroup;
    global String ChannelIntent;
    global String ChannelLocale;
    global Account EndUserAccount;
    global Id EndUserAccountId;
    global Contact EndUserContact;
    global Id EndUserContactId;
    global String ChannelType;
    global String ChannelName;
    global String ChannelKey;
    global String PreviewDetails;
    global String ChannelEndUserFormula;
    global Integer EndUserMessageCount;
    global Integer AgentMessageCount;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Case> Cases;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<ConversationEntry> ConversationEntries;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<MessagingSessionFeed> Feeds;
    global List<MessagingSessionHistory> Histories;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<CaseChangeEvent> Source;
    global List<ContentVersion> FirstPublishLocation;
    global List<FeedComment> Parent;

    global MessagingSession () 
    {
    }
}