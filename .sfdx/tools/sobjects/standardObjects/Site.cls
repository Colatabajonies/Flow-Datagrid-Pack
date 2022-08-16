// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Site {
    global Id Id;
    global String Name;
    global String Subdomain;
    global String UrlPathPrefix;
    global User GuestUser;
    global Id GuestUserId;
    global String Status;
    global User Admin;
    global Id AdminId;
    global Boolean OptionsEnableFeeds;
    global Boolean OptionsRequireHttps;
    global Boolean OptionsAllowHomePage;
    global Boolean OptionsAllowStandardIdeasPages;
    global Boolean OptionsAllowStandardSearch;
    global Boolean OptionsAllowStandardLookups;
    global Boolean OptionsAllowStandardAnswersPages;
    global Boolean OptionsAllowGuestSupportApi;
    global Boolean OptionsAllowStandardPortalPages;
    global Boolean OptionsCspUpgradeInsecureRequests;
    global Boolean OptionsContentSniffingProtection;
    global Boolean OptionsBrowserXssProtection;
    global Boolean OptionsReferrerPolicyOriginWhenCrossOrigin;
    global String Description;
    global String MasterLabel;
    global String AnalyticsTrackingCode;
    global String SiteType;
    global String ClickjackProtectionLevel;
    global Integer DailyBandwidthLimit;
    global Integer DailyBandwidthUsed;
    global Integer DailyRequestTimeLimit;
    global Integer DailyRequestTimeUsed;
    global Integer MonthlyPageViewsEntitlement;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<DomainSite> SiteDomainPaths;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<SiteFeed> Feeds;
    global List<SiteHistory> Histories;
    global List<SiteIframeWhiteListUrl> SiteIframeWhiteListUrls;
    global List<ContentVersion> FirstPublishLocation;
    global List<FeedComment> Parent;

    global Site () 
    {
    }
}