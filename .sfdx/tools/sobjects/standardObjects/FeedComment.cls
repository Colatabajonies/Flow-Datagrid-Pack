// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class FeedComment {
    global Id Id;
    global SObject FeedItem;
    global Id FeedItemId;
    global SObject Parent;
    global Id ParentId;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global Datetime SystemModstamp;
    global Integer Revision;
    global User LastEditBy;
    global Id LastEditById;
    global Datetime LastEditDate;
    global String CommentBody;
    global Boolean IsDeleted;
    global User InsertedBy;
    global Id InsertedById;
    global String CommentType;
    global ContentVersion RelatedRecord;
    global Id RelatedRecordId;
    global Boolean IsRichText;
    global Boolean IsVerified;
    global Boolean HasEntityLinks;
    global String Status;
    global FeedComment ThreadParent;
    global Id ThreadParentId;
    global Integer ThreadLevel;
    global Integer ThreadChildrenCount;
    global Datetime ThreadLastUpdatedDate;
    global List<FeedAttachment> FeedAttachments;
    global List<FeedComment> FeedThreadedComments;
    global List<FeedRevision> FeedRevisions;
    global List<AccountFeed> BestComment;
    global List<FeedLike> FeedEntity;
    global List<FlowRecordRelation> RelatedRecord;
    global List<LeadFeed> BestComment;

    global FeedComment () 
    {
    }
}