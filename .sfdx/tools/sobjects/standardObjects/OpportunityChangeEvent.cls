// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class OpportunityChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global Account Account;
    global Id AccountId;
    global Boolean IsPrivate;
    global String Name;
    global String Description;
    global String StageName;
    global Decimal Amount;
    global Double Probability;
    global Decimal ExpectedRevenue;
    global Double TotalOpportunityQuantity;
    global Date CloseDate;
    global String Type;
    global String NextStep;
    global String LeadSource;
    global Boolean IsClosed;
    global Boolean IsWon;
    global String ForecastCategory;
    global String ForecastCategoryName;
    global Campaign Campaign;
    global Id CampaignId;
    global Boolean HasOpportunityLineItem;
    global Pricebook2 Pricebook2;
    global Id Pricebook2Id;
    global User Owner;
    global Id OwnerId;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Contact Contact;
    global Id ContactId;
    global String FDGPack__DeliveryInstallationStatus__c;
    global String FDGPack__TrackingNumber__c;
    global String FDGPack__OrderNumber__c;
    global String FDGPack__CurrentGenerators__c;
    global String FDGPack__MainCompetitors__c;

    global OpportunityChangeEvent () 
    {
    }
}