// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class LeadCleanInfo {
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
    global Lead Lead;
    global Id LeadId;
    global Datetime LastMatchedDate;
    global Datetime LastStatusChangedDate;
    global User LastStatusChangedBy;
    global Id LastStatusChangedById;
    global Boolean IsInactive;
    global String FirstName;
    global String LastName;
    global String Email;
    global String Phone;
    global String Street;
    global String City;
    global String State;
    global String PostalCode;
    global String Country;
    global Double Latitude;
    global Double Longitude;
    global String GeocodeAccuracy;
    global Address Address;
    global String Title;
    global Decimal AnnualRevenue;
    global Integer NumberOfEmployees;
    global String Industry;
    global String CompanyName;
    global String CompanyDunsNumber;
    global String ContactStatusDataDotCom;
    global Boolean IsReviewedName;
    global Boolean IsReviewedEmail;
    global Boolean IsReviewedPhone;
    global Boolean IsReviewedAddress;
    global Boolean IsReviewedTitle;
    global Boolean IsReviewedAnnualRevenue;
    global Boolean IsReviewedNumberOfEmployees;
    global Boolean IsReviewedIndustry;
    global Boolean IsReviewedCompanyName;
    global Boolean IsReviewedCompanyDunsNumber;
    global Boolean IsReviewedDandBCompanyDunsNumber;
    global Boolean IsDifferentFirstName;
    global Boolean IsDifferentLastName;
    global Boolean IsDifferentEmail;
    global Boolean IsDifferentPhone;
    global Boolean IsDifferentStreet;
    global Boolean IsDifferentCity;
    global Boolean IsDifferentState;
    global Boolean IsDifferentPostalCode;
    global Boolean IsDifferentCountry;
    global Boolean IsDifferentTitle;
    global Boolean IsDifferentAnnualRevenue;
    global Boolean IsDifferentNumberOfEmployees;
    global Boolean IsDifferentIndustry;
    global Boolean IsDifferentCompanyName;
    global Boolean IsDifferentCompanyDunsNumber;
    global Boolean IsDifferentDandBCompanyDunsNumber;
    global Boolean IsDifferentStateCode;
    global Boolean IsDifferentCountryCode;
    global Boolean CleanedByJob;
    global Boolean CleanedByUser;
    global String DandBCompanyDunsNumber;
    global String DataDotComCompanyId;
    global Boolean IsFlaggedWrongName;
    global Boolean IsFlaggedWrongEmail;
    global Boolean IsFlaggedWrongPhone;
    global Boolean IsFlaggedWrongAddress;
    global Boolean IsFlaggedWrongTitle;
    global Boolean IsFlaggedWrongAnnualRevenue;
    global Boolean IsFlaggedWrongNumberOfEmployees;
    global Boolean IsFlaggedWrongIndustry;
    global Boolean IsFlaggedWrongCompanyName;
    global Boolean IsFlaggedWrongCompanyDunsNumber;
    global String DataDotComId;
    global List<FlowRecordRelation> RelatedRecord;

    global LeadCleanInfo () 
    {
    }
}