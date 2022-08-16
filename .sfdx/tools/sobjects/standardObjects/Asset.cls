// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Asset {
    global Id Id;
    global Contact Contact;
    global Id ContactId;
    global Account Account;
    global Id AccountId;
    global Asset Parent;
    global Id ParentId;
    global Asset RootAsset;
    global Id RootAssetId;
    global Product2 Product2;
    global Id Product2Id;
    global String ProductCode;
    global Boolean IsCompetitorProduct;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Boolean IsDeleted;
    global String Name;
    global String SerialNumber;
    global Date InstallDate;
    global Date PurchaseDate;
    global Date UsageEndDate;
    global String Status;
    global Decimal Price;
    global Double Quantity;
    global String Description;
    global User Owner;
    global Id OwnerId;
    global Account AssetProvidedBy;
    global Id AssetProvidedById;
    global Account AssetServicedBy;
    global Id AssetServicedById;
    global Boolean IsInternal;
    global Integer AssetLevel;
    global String StockKeepingUnit;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global Double FDGPack__Location__Latitude__s;
    global Double FDGPack__Location__Longitude__s;
    global Location FDGPack__Location__c;
    global Double FDGPack__Account_Latitude__c;
    global Double FDGPack__Account_Longitude__c;
    global List<ActivityHistory> ActivityHistories;
    global List<Asset> ChildAssets;
    global List<AssetFeed> Feeds;
    global List<AssetHistory> Histories;
    global List<AssetRelationship> PrimaryAssets;
    global List<AssetRelationship> RelatedAssets;
    global List<AssetShare> Shares;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global List<Case> Cases;
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
    global List<ServiceAppointment> ServiceAppointments;
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global List<Asset> RootAsset;
    global List<AssetChangeEvent> Parent;
    global List<AssetChangeEvent> RootAsset;
    global List<AssetTokenEvent> Asset;
    global List<ContentVersion> FirstPublishLocation;
    global List<EventChangeEvent> What;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<TaskChangeEvent> What;

    global Asset () 
    {
    }
}