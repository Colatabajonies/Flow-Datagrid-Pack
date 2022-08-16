// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class FeedRevision {
    global Id Id;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime SystemModstamp;
    global Boolean IsDeleted;
    global SObject FeedEntity;
    global Id FeedEntityId;
    global Integer Revision;
    global String Action;
    global String EditedAttribute;
    global String Value;
    global Boolean IsValueRichText;
    global List<FlowRecordRelation> RelatedRecord;

    global FeedRevision () 
    {
    }
}