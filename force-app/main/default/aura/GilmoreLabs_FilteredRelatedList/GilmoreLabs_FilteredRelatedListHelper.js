({
    fetchColumns: function (cmp)
    {
        var action = cmp.get("c.getColumnString");
        action.setParams({ "objectName" : cmp.get("v.relatedFieldAPIName"), "fields" : cmp.get("v.strFields"), "openRecordField" : cmp.get("v.strObjectLink") });
        // Create a callback that is executed after 
        // the server-side action returns
        action.setCallback(this, function(response) 
        {
            //alert('returned: ' + response.getReturnValue());
            var state = response.getState();
            if (state === "SUCCESS") {
                var jsonColumns = JSON.parse(response.getReturnValue());
                cmp.set('v.columns', jsonColumns);
            }
            else if (state === "INCOMPLETE") {
                // do something
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
        $A.enqueueAction(action);
    },
    
    fetchData: function (cmp) 
    {
        var action = cmp.get("c.getDataString");
        action.setParams({ "strRecordId" : cmp.get("v.recordId"), "strForeignKey" : cmp.get("v.relatedFieldAPIName"), "fields" : cmp.get("v.strFields"), "strWhereClause" : cmp.get("v.strWhereClause"), "openRecordField" : cmp.get("v.strObjectLink") });
        // Create a callback that is executed after 
        // the server-side action returns
        action.setCallback(this, function(response) 
        {
            //alert('returned: ' + response.getReturnValue());
            var state = response.getState();
            if (state === "SUCCESS") {
                var jsonData = JSON.parse(response.getReturnValue());
                cmp.set('v.data', jsonData);
                
                //Pre-select the selected rows
                var lstpreSelectedIds = cmp.get("v.lstpreSelectedIds");
                cmp.set('v.firstSelectedId', null);
                if (lstpreSelectedIds != null)
                {
                    // Workaround to selectRows
                    cmp.set('v.selectedRowsCount', lstpreSelectedIds.length);
                    var cmpTable = cmp.find("beachTable");
                    cmpTable.set("v.selectedRows", lstpreSelectedIds);
                    cmp.set('v.lstSelectedIds', lstpreSelectedIds);
                    
                    if (lstpreSelectedIds.length > 0)
                    {
                        cmp.set('v.firstSelectedId', lstpreSelectedIds[0]);
                    }
                }
            }
            else if (state === "INCOMPLETE") {
                // do something
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
        $A.enqueueAction(action);
    },
    
    viewRecord : function(component, event) {
        var row = event.getParam('row');
        var recordId = row.id;
        var navEvt = $A.get("event.force:navigateToSObject");
        navEvt.setParams({
            "recordId": recordId,
            "slideDevName": "detail"
        });
        navEvt.fire();
    },
    
    editRecord : function(component, event) {
        var row = event.getParam('row');
        var recordId = row.id;
        //alert(recordId);
        var editRecordEvent = $A.get("e.force:editRecord");
        editRecordEvent.setParams({
            "recordId": recordId
        });
        editRecordEvent.fire();
    },
    
    deleteRecord : function(component, event) {
        var action = event.getParam('action');
        var row = event.getParam('row');
         
        var action = component.get("c.deleteRecord");
        action.setParams({
            "recordID": row.id
        });
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS" && response.getReturnValue()) {
                var rows = component.get('v.data');
                var rowIndex = rows.indexOf(row);
                rows.splice(rowIndex, 1);
                component.set('v.data', rows);
                 
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Success!",
                    "message": "The record has been deleted successfully."
                });
                toastEvent.fire();
            }
        });
        $A.enqueueAction(action);
    },
    
    sortData: function (component, fieldName, sortDirection) {
        var data = component.get("v.data");
        var reverse = sortDirection !== 'asc';
        data.sort(this.sortBy(fieldName, reverse))
        component.set("v.data", data);
    },
     
    sortBy: function (field, reverse, primer) {
        var key = primer ?
            function(x) {return primer(x[field])} :
        function(x) {return x[field]};
        reverse = !reverse ? 1 : -1;
        return function (a, b) {
            return a = key(a), b = key(b), reverse * ((a > b) - (b > a));
        }
    },
})