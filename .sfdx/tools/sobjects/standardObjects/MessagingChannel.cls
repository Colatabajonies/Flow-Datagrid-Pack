// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class MessagingChannel {
    global Id Id;
    global Boolean IsDeleted;
    global String DeveloperName;
    global String Language;
    global String MasterLabel;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global String MessagingPlatformKey;
    global String MessageType;
    global Group TargetQueue;
    global Id TargetQueueId;
    global String Description;
    global Integer CriticalWaitTime;
    /* Message sent to the customer when a customer initiates a conversation.
    */
    global String InitialResponse;
    /* Message sent to the customer when an agent accepts a chat.
    */
    global String EngagedResponse;
    /* Message sent to the customer when the agent ends the conversation.
    */
    global String ConversationEndResponse;
    global String OfflineAgentsResponse;
    global BusinessHours BusinessHours;
    global Id BusinessHoursId;
    global String OutsideBusinessHoursResponse;
    global Boolean IsRestrictedToBusinessHours;
    global Boolean IsUserMatchByExternalIdOnly;
    global Boolean IsActive;
    global String LinkingPreference;
    global Boolean IsLinkedRecordOpenedAsSubTab;
    global String OptInResponse;
    global String OptOutResponse;
    global String IsoCountryCode;
    global String RoutingType;
    global User TargetUser;
    global Id TargetUserId;
    global List<MessagingLink> MessagingLinks;
    global List<MessagingChannelSkill> MessagingChannel;

    global MessagingChannel () 
    {
    }
}