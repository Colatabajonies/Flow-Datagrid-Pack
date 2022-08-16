// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ConversationEntry {
    global Id Id;
    global Boolean IsDeleted;
    global Datetime SystemModstamp;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global MessagingSession Conversation;
    global Id ConversationId;
    global Integer Seq;
    global Datetime EntryTime;
    global String EntryType;
    global String ActorType;
    global SObject Actor;
    global Id ActorId;
    global String ActorName;
    global String Message;
    global String MessageStatus;
    global String MessageStatusCode;
    global Datetime MessageSendTime;
    global Datetime MessageDeliverTime;
    global Datetime MessageReadTime;
    global Boolean HasAttachments;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<ContentVersion> FirstPublishLocation;
    global List<FlowRecordRelation> RelatedRecord;

    global ConversationEntry () 
    {
    }
}