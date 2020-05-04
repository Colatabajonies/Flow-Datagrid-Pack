import { LightningElement, api, wire, track } from 'lwc';
import { FlowAttributeChangeEvent, FlowNavigationNextEvent } from 'lightning/flowSupport';
import getDatatableData from '@salesforce/apex/LWC_DataHelper.getDatatableData';
import getColumnString from '@salesforce/apex/LWC_DataHelper.getColumnString';

export default class LWC_Datagrid extends LightningElement 
{
    @api availableActions = [];
    @api objAPIName;
    @api fieldList;
    @api recordIDsIn;
    @api selectedIDs;
    @api firstSelectedID;
    @api maxSelection;

    @track isError = true;
    @track error = "No records to display";
    @track columns;
    @track defaultSortDirection = 'asc';
    @track sortDirection = 'asc';
    @track sortedBy;
    
    @track preSelectedRows = [];
    
    @wire(getColumnString, {objAPIName: '$objAPIName', fieldList: '$fieldList'})
    wiredColumns({ error, data })
    {
        if (data) {
            //alert(data);
            this.columns = JSON.parse(data);
        } else if (error) {
            //alert('error!');
            this.isError = true;
            this.error = error.body.exceptionType + ' - ' + error.body.message;
            this.selectedIDs = null;
            this.firstSelectedID = null;
        }
    }

    @wire(getDatatableData, {objAPIName: '$objAPIName', fieldList: '$fieldList', recordIDsIn: '$recordIDsIn'})
    wiredRows({ error, data })
    {
        if (data) 
        {
            //alert('data');
            this.objData = data;
            if (this.objData.length > 0) 
            {
                this.isError = false;
                this.preSelectedRows = [];
                for (var i=0; i< this.selectedIDs.length; i++)
                {
                    this.preSelectedRows.push(this.selectedIDs[i]);
                }
            }
            else
            {
                this.isError = true;
                this.selectedIDs = null;
                this.firstSelectedID = null;
            }
        } else if (error) 
        {
            //alert('error!');
            this.isError = true;
            this.error = error.body.exceptionType + ' - ' + error.body.message;
            this.selectedIDs = null;
            this.firstSelectedID = null;
        }
        else
        {
            //alert('nothing');
            this.isError = true;
            this.selectedIDs = null;
            this.firstSelectedID = null;
        }
    }

    getSelectedName(event) {
        
        const selectedRows = event.detail.selectedRows;
        this.selectedIDs = null;
        this.firstSelectedID = null;
        // Display that fieldName of the selected rows
        for (let i = 0; i < selectedRows.length; i++)
        {
            if (i == 0)
            {
                this.selectedIDs = [];
                this.firstSelectedID = selectedRows[0].Id;
            }
           this.selectedIDs.push(selectedRows[i].Id);
            //alert("You selected: " + selectedRows[i].name);
        }
    }

    // Used to sort the 'Age' column
    sortBy(field, reverse, primer) {
        const key = primer
            ? function(x) {
                  return primer(x[field]);
              }
            : function(x) {
                  return x[field];
              };

        return function(a, b) {
            a = key(a);
            b = key(b);
            return reverse * ((a > b) - (b > a));
        };
    }

    onHandleSort(event) {
        const { fieldName: sortedBy, sortDirection } = event.detail;
        const cloneData = [...this.objData];

        cloneData.sort(this.sortBy(sortedBy, sortDirection === 'asc' ? 1 : -1));
        this.objData = cloneData;
        this.sortDirection = sortDirection;
        this.sortedBy = sortedBy;
    }

    handleGoNext() {
        /*// check if NEXT is allowed on this screen
        if (this.availableActions.find(action => action === 'NEXT')) {
            // navigate to the next screen
            const navigateNextEvent = new FlowNavigationNextEvent();
            this.dispatchEvent(navigateNextEvent);
        }*/
    }
}