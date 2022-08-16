// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class CollaborationGroup {
    global Id Id;
    global String Name;
    global Integer MemberCount;
    global User Owner;
    global Id OwnerId;
    global String CollaborationType;
    global String Description;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global String FullPhotoUrl;
    global String MediumPhotoUrl;
    global String SmallPhotoUrl;
    global Datetime LastFeedModifiedDate;
    global String InformationTitle;
    global String InformationBody;
    global Boolean HasPrivateFieldsAccess;
    global Boolean CanHaveGuests;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global Boolean IsArchived;
    global Boolean IsAutoArchiveDisabled;
    global Announcement Announcement;
    global Id AnnouncementId;
    global String GroupEmail;
    global String BannerPhotoUrl;
    global Boolean IsBroadcast;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CollaborationGroupFeed> Feeds;
    global List<CollaborationGroupMember> GroupMembers;
    global List<CollaborationGroupMemberRequest> GroupMemberRequests;
    global List<CollaborationGroupRecord> CollaborationGroupRecords;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<Announcement> Parent;
    global List<CollaborationInvitation> SharedEntity;
    global List<ContentVersion> FirstPublishLocation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;

    global CollaborationGroup () 
    {
    }
}