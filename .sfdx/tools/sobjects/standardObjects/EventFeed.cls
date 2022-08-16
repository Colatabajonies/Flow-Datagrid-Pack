// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class EventFeed {
    global Id Id;
    global Event Parent;
    global Id ParentId;
    global String Type;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global Boolean IsDeleted;
    global Datetime LastModifiedDate;
    global Datetime SystemModstamp;
    global Integer CommentCount;
    global Integer LikeCount;
    global String Title;
    global String Body;
    global String LinkUrl;
    global Boolean IsRichText;
    global ContentVersion RelatedRecord;
    global Id RelatedRecordId;
    global User InsertedBy;
    global Id InsertedById;
    global FeedComment BestComment;
    global Id BestCommentId;
    global List<FeedAttachment> FeedAttachments;
    global List<FeedComment> FeedComments;
    global List<FeedLike> FeedLikes;
    global List<FeedSignal> FeedSignals;
    global List<FeedTrackedChange> FeedTrackedChanges;
    global List<FeedLike> FeedEntity;
    global List<FeedPollChoice> FeedItem;
    global List<FeedSignal> FeedEntity;

    global EventFeed () 
    {
    }
}