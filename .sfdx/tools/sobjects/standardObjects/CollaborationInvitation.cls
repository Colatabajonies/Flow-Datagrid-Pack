// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class CollaborationInvitation {
    global Id Id;
    global CollaborationInvitation Parent;
    global Id ParentId;
    global SObject SharedEntity;
    global Id SharedEntityId;
    global User Inviter;
    global Id InviterId;
    global String InvitedUserEmail;
    global String InvitedUserEmailNormalized;
    global String Status;
    global String OptionalMessage;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global List<CollaborationInvitation> Parent;
    global List<FlowRecordRelation> RelatedRecord;

    global CollaborationInvitation () 
    {
    }
}