// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class AssetChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
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
    global Boolean IsCompetitorProduct;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
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
    global Double FDGPack__Location__Latitude__s;
    global Double FDGPack__Location__Longitude__s;
    global Location FDGPack__Location__c;
    global Double FDGPack__Account_Latitude__c;
    global Double FDGPack__Account_Longitude__c;

    global AssetChangeEvent () 
    {
    }
}