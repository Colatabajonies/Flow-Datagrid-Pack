global class GilmoreLabs_RelatedObjectPicklist extends VisualEditor.DynamicPickList
{
    VisualEditor.DesignTimePageContext context;
    
    global GilmoreLabs_RelatedObjectPicklist(VisualEditor.DesignTimePageContext context) 
    {
        this.context = context;
    }
    
    global override VisualEditor.DataRow getDefaultValue()
    {
        return null;
    }
    global override VisualEditor.DynamicPickListRows getValues() 
    {
        
        VisualEditor.DynamicPickListRows  myValues = new VisualEditor.DynamicPickListRows();
        
        Schema.SObjectType myObjType = ((Map<String, Schema.SObjectType>)Schema.getGlobalDescribe()).get(context.entityName);
        Schema.DescribeSObjectResult dobj = myObjType.getDescribe();
        List<Schema.ChildRelationship> cRelations = dobj.getChildRelationships();
        for (Schema.ChildRelationship cRelation : cRelations)
        {
            Schema.SObjectField objField = cRelation.getField();
            Schema.SObjectType objInstance = cRelation.getChildSObject();
            myValues.addRow(new VisualEditor.DataRow('(' + objInstance.getDescribe().getLabel() + ') ' + objInstance.getDescribe().getLabel() + '.' + objField.getDescribe().getLabel(), objInstance.getDescribe().getName() + '.' + objField.getDescribe().getName()));
        }
        
        return myValues;
    }
}