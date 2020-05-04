import { LightningElement, api, wire, track } from 'lwc';
import { FlowAttributeChangeEvent, FlowNavigationNextEvent } from 'lightning/flowSupport';
import getTileData from '@salesforce/apex/LWC_DataHelper.getTileData';

export default class LWC_TilePicker extends LightningElement 
{
    @api tileSize;
    @api lstItems;
    @api multiSelect;
    @api selectedItems;
    @api selectedItem;
    
    @track tileItems;
    @track inputType;
    @track tileSizeClass;
    @track isError = true;
    @track error = "No records to display";


    @wire(getTileData, {lstInput: '$lstItems'})
    wiredItems({ error, data })
    {
        if (data) {
            //alert(data);
            this.inputType = this.multiSelect ? 'checkbox' : 'radio';
            this.tileSizeClass = 'slds-visual-picker slds-visual-picker_' + this.tileSize;
            this.tileItems = data;
            this.isError = false;
        } else if (error) {
            alert('error!');
            this.isError = true;
            this.error = error.body.exceptionType + ' - ' + error.body.message;
            this.selectedItems = null;
            this.selectedItem = null;
        }
    }
}