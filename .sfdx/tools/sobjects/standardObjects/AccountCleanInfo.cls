// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class AccountCleanInfo {
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
    global Account Account;
    global Id AccountId;
    global Datetime LastMatchedDate;
    global Datetime LastStatusChangedDate;
    global User LastStatusChangedBy;
    global Id LastStatusChangedById;
    global Boolean IsInactive;
    global String CompanyName;
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
    global String Website;
    global String TickerSymbol;
    global Decimal AnnualRevenue;
    global Integer NumberOfEmployees;
    global String Industry;
    global String Ownership;
    global String DunsNumber;
    global String Sic;
    global String SicDescription;
    global String NaicsCode;
    global String NaicsDescription;
    global String YearStarted;
    global String Fax;
    global String AccountSite;
    global String Description;
    global String Tradestyle;
    global String DandBCompanyDunsNumber;
    global String DunsRightMatchGrade;
    global Integer DunsRightMatchConfidence;
    global String CompanyStatusDataDotCom;
    global Boolean IsReviewedCompanyName;
    global Boolean IsReviewedPhone;
    global Boolean IsReviewedAddress;
    global Boolean IsReviewedWebsite;
    global Boolean IsReviewedTickerSymbol;
    global Boolean IsReviewedAnnualRevenue;
    global Boolean IsReviewedNumberOfEmployees;
    global Boolean IsReviewedIndustry;
    global Boolean IsReviewedOwnership;
    global Boolean IsReviewedDunsNumber;
    global Boolean IsReviewedSic;
    global Boolean IsReviewedSicDescription;
    global Boolean IsReviewedNaicsCode;
    global Boolean IsReviewedNaicsDescription;
    global Boolean IsReviewedYearStarted;
    global Boolean IsReviewedFax;
    global Boolean IsReviewedAccountSite;
    global Boolean IsReviewedDescription;
    global Boolean IsReviewedTradestyle;
    global Boolean IsReviewedDandBCompanyDunsNumber;
    global Boolean IsDifferentCompanyName;
    global Boolean IsDifferentPhone;
    global Boolean IsDifferentStreet;
    global Boolean IsDifferentCity;
    global Boolean IsDifferentState;
    global Boolean IsDifferentPostalCode;
    global Boolean IsDifferentCountry;
    global Boolean IsDifferentWebsite;
    global Boolean IsDifferentTickerSymbol;
    global Boolean IsDifferentAnnualRevenue;
    global Boolean IsDifferentNumberOfEmployees;
    global Boolean IsDifferentIndustry;
    global Boolean IsDifferentOwnership;
    global Boolean IsDifferentDunsNumber;
    global Boolean IsDifferentSic;
    global Boolean IsDifferentSicDescription;
    global Boolean IsDifferentNaicsCode;
    global Boolean IsDifferentNaicsDescription;
    global Boolean IsDifferentYearStarted;
    global Boolean IsDifferentFax;
    global Boolean IsDifferentAccountSite;
    global Boolean IsDifferentDescription;
    global Boolean IsDifferentTradestyle;
    global Boolean IsDifferentDandBCompanyDunsNumber;
    global Boolean IsDifferentStateCode;
    global Boolean IsDifferentCountryCode;
    global Boolean CleanedByJob;
    global Boolean CleanedByUser;
    global Boolean IsFlaggedWrongCompanyName;
    global Boolean IsFlaggedWrongPhone;
    global Boolean IsFlaggedWrongAddress;
    global Boolean IsFlaggedWrongWebsite;
    global Boolean IsFlaggedWrongTickerSymbol;
    global Boolean IsFlaggedWrongAnnualRevenue;
    global Boolean IsFlaggedWrongNumberOfEmployees;
    global Boolean IsFlaggedWrongIndustry;
    global Boolean IsFlaggedWrongOwnership;
    global Boolean IsFlaggedWrongDunsNumber;
    global Boolean IsFlaggedWrongSic;
    global Boolean IsFlaggedWrongSicDescription;
    global Boolean IsFlaggedWrongNaicsCode;
    global Boolean IsFlaggedWrongNaicsDescription;
    global Boolean IsFlaggedWrongYearStarted;
    global Boolean IsFlaggedWrongFax;
    global Boolean IsFlaggedWrongAccountSite;
    global Boolean IsFlaggedWrongDescription;
    global Boolean IsFlaggedWrongTradestyle;
    global String DataDotComId;
    global List<FlowRecordRelation> RelatedRecord;

    global AccountCleanInfo () 
    {
    }
}