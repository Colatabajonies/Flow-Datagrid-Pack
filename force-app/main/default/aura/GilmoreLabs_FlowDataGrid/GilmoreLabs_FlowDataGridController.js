({
    init: function (cmp, event, helper) 
    {
        helper.fetchColumns(cmp);
    },

    updateSelectedText: function (cmp, event) {
        var selectedRows = event.getParam('selectedRows');
        
        var lstSelectedIDs = [];
        for(var i = 0; i < selectedRows.length; i++)
        {
            lstSelectedIDs.push(selectedRows[i].id);
        }
        cmp.set('v.firstSelectedId', null);
        if (lstSelectedIDs.length > 0)
        {
            cmp.set('v.firstSelectedId', lstSelectedIDs[0]);
        }
        
        cmp.set('v.lstSelectedIds', lstSelectedIDs);
        
        cmp.set('v.selectedRowsCount', selectedRows.length);
    },

    handleSort : function(component,event,helper){
        //Returns the field which has to be sorted
        var sortBy = event.getParam("fieldName");
        var sortType = event.getParam("type");
        //returns the direction of sorting like asc or desc
        var sortDirection = event.getParam("sortDirection");
        //Set the sortBy and SortDirection attributes
        component.set("v.sortBy",sortBy);
        component.set("v.sortDirection",sortDirection);
        // call sortData helper function
        helper.sortData(component,sortBy,sortType,sortDirection);
    }
})