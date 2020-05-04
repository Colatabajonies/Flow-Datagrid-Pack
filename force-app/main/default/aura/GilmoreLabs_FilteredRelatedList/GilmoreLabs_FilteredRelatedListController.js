({
    doInit : function(component, event, helper) 
    {
        if (component.get('v.relatedFieldAPIName') != null)
        {
            var refObjectName = component.get('v.relatedFieldAPIName').split('.')[0];
            //alert(refObjectName);
            component.set('v.relatedObjectName', refObjectName.toLowerCase());
            helper.fetchColumns(component);
            helper.fetchData(component);
        }  
    },
    
    handleRowAction: function (cmp, event, helper) {
        var action = event.getParam('action');
        var row = event.getParam('row');
        
        switch (action.name) {
            case 'view':
                //alert('Showing Details: ' + JSON.stringify(row));
                helper.viewRecord(cmp,event);
                break;
            case 'edit':
                //alert('Showing Details: ' + JSON.stringify(row));
                helper.editRecord(cmp,event);
                break;
            case 'delete':
                helper.deleteRecord(cmp,event);
                break;
        }
    },
    
    handleColumnSorting: function (component, event, helper) {
        var fieldName = event.getParam('fieldName');
        var sortDirection = event.getParam('sortDirection');
        component.set("v.sortedBy", fieldName);
        component.set("v.sortedDirection", sortDirection);
        helper.sortData(component, fieldName, sortDirection);
    },
})