// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class AuthorizationFormText {
    global Id Id;
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
    global AuthorizationForm AuthorizationForm;
    global Id AuthorizationFormId;
    global String FullAuthorizationFormUrl;
    global String SummaryAuthFormText;
    global String Locale;
    global List<AuthorizationFormConsent> AuthorizationFormConsents;
    global List<AuthorizationFormTextHistory> Histories;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<AuthorizationForm> DefaultAuthFormText;
    global List<FlowRecordRelation> RelatedRecord;

    global AuthorizationFormText () 
    {
    }
}