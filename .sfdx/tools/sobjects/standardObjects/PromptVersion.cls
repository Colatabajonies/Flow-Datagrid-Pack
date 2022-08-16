// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class PromptVersion {
    global Id Id;
    global Boolean IsDeleted;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Prompt Parent;
    global Id ParentId;
    global String MasterLabel;
    global String Description;
    global String DisplayType;
    global String DisplayPosition;
    global Integer TimesToDisplay;
    global Integer DelayDays;
    global Date StartDate;
    global Date EndDate;
    global String UserAccess;
    global Boolean IsPublished;
    global Date PublishedDate;
    global User PublishedByUser;
    global Id PublishedByUserId;
    global String Header;
    global String DismissButtonLabel;
    global Boolean ShouldDisplayActionButton;
    global String ActionButtonLabel;
    global String ActionButtonLink;
    global String Title;
    global Integer VersionNumber;
    global String TargetPageType;
    global String TargetPageKey1;
    global String TargetPageKey2;
    global String TargetAppNamespacePrefix;
    global String TargetAppDeveloperName;
    global String Body;
    global String IndexWithIsPublished;
    global String IndexWithoutIsPublished;
    global List<PromptAction> PromptVersion;

    global PromptVersion () 
    {
    }
}