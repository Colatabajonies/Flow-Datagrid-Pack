// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class FlowVersionView {
    global Id Id;
    global String DurableId;
    global FlowDefinitionView FlowDefinitionView;
    global Id FlowDefinitionViewId;
    global String Label;
    global String Description;
    global String Status;
    global Integer VersionNumber;
    global String ProcessType;
    global Boolean IsTemplate;
    global Datetime LastModifiedDate;
    global List<FlowVariableView> Variables;

    global FlowVersionView () 
    {
    }
}