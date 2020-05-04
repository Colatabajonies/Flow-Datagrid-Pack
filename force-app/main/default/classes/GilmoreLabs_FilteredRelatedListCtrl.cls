public class GilmoreLabs_FilteredRelatedListCtrl 
{
    @AuraEnabled
    public static String getColumnString(String objectName, String fields, String openRecordField) 
    {
        
        fields = fields.remove(' ');
        
        string result = '[';
        SObjectType myObjType = Schema.getGlobalDescribe().get(objectName.split('\\.')[0]);
        Map<String,Schema.SObjectField> mfields = myObjType.getDescribe().fields.getMap();
        
        for (string currentField : fields.toLowerCase().split(','))
        {
            string targetField = currentField;
            if (currentField.contains('.'))
            {
                targetField = currentField.split('\\.')[0].replace('__r','__c');
            }
            system.debug('Checking for field:' + targetField);
            for (Schema.SObjectField sField : mfields.values()) 
            {
                schema.DescribeFieldResult dField = sField.getDescribe(); 
                String fieldLabel = dField.getLabel();
                String fieldAPIName = dField.getName();      
                string fieldType = String.ValueOf(dField.getType()).tolowercase();
                
                if (currentField.contains('.'))
                {
                    fieldLabel += '.' + currentField.split('\\.')[1];
                    fieldType = 'string';
                }
                
                //Handle all the types of fields
                if (fieldType == 'id')fieldType = 'string';
                
                
                system.debug('Comparing target field:' + targetField + ' with ' + fieldAPIName.toLowerCase());
                if (targetField == fieldAPIName.toLowerCase() && fieldAPIName.toLowerCase() == openRecordField.toLowerCase())
                {
                    result += '{"label": "' + fieldLabel + '", "fieldName": "show__record", "type": "url", "typeAttributes":{"label":{"fieldName":"' + currentField.toLowerCase() + '"}}},';
                    break;
                }
                else if (targetField == fieldAPIName.toLowerCase() || (currentField.contains('.') && !currentField.contains('__c') && targetField + 'id' == fieldAPIName.toLowerCase()))
                {
                    system.debug('Adding Field to datagrid:' + fieldLabel);
                    //we need to add the string to this
                    result += '{"label": "' + fieldLabel  + '", "fieldName": "' + currentField.toLowerCase() + '", "type": "' + fieldType + '"' + (fieldType == 'url' ? ', "typeAttributes":{"label":{"fieldName":"name"}}' : '') + '},';
                    break;
                }
            }
        }
        //result = result.removeEnd(',') + ']';
        result += '{ "type": "action", "typeAttributes": { "rowActions": [{ "label": "View", "name": "view" ,"iconName": "utility:preview"},{ "label": "Edit", "name": "edit" ,"iconName": "utility:edit"},{ "label": "Delete", "name": "delete","iconName": "utility:delete" }] } }]';
        return result;
    }
    
    @AuraEnabled
    public static String getDataString(String strRecordId, String strForeignKey, String fields, String strWhereClause, String openRecordField)
    {
        string result = '[';
        fields = fields.remove(' ');
        
        List<sObject> sobjList = Database.query('SELECT ' + fields.removeEnd(',') + ' FROM ' + strForeignKey.split('\\.')[0] + ' WHERE ' + strForeignKey.split('\\.')[1] + ' =:strRecordId' + (String.isNotBlank(strWhereClause) ? ' AND ' + strWhereClause : ''));
        for (sObject currentObject : sobjList)
        {
            result += '{"id":"' + currentObject.get('Id') + '",';
            for(string currentField : fields.split(','))
            {
                if (currentField.toLowerCase() == openRecordField.toLowerCase())
                {
                    result += '"show__record":"/' + currentObject.get('Id') + '",';
                }
                if (currentField.toLowerCase() != 'id')
                {
                    if (currentField.contains('.'))
                    {
                        String sFieldSub1 = currentField.SubString(0,currentField.indexof('.'));
                        String sFieldSub2 = currentField.SubString(currentField.indexof('.') + 1,currentField.Length()); //though I imagine you could use a spilt string also.
                        String sValue = '';
                        if (currentObject.getSObject(sFieldSub1) != null)
                        {
                            sValue = String.valueof(currentObject.getSObject(sFieldSub1).get(sFieldSub2));
                        }
                        result += '"' + currentField.toLowerCase() + '":"' + escapeText(sValue) + '",';
                    }
                    else
                    {
                        string myVal = String.valueOf(currentObject.get(currentField));
                        result += '"' + currentField.toLowerCase() + '":"' + escapeText(myVal)  + '",';
                    }
                }
            }
            result = result.removeEnd(',') + '},';
        }
        result = result.removeEnd(',') + ']';
        return result;
    }
    
    
    @AuraEnabled
    public static Boolean deleteRecord(string recordID)
    {
        try
        {
            Database.delete(recordID);
        }
        catch (Exception ex)
        {
            return false;
        }
        return true;
    }
    
    public static string escapeText(string input)
    {
        if (input == null) return null;
        return input.replace('<', '&lt;').replace('>', '&gt;').replace('"', '\'');
    }
}