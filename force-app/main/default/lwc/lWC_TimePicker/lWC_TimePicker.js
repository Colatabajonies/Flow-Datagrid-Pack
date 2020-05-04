import { LightningElement, api, wire, track } from 'lwc';
import { FlowAttributeChangeEvent, FlowNavigationNextEvent } from 'lightning/flowSupport';
import { loadScript, loadStyle } from 'lightning/platformResourceLoader';
import hTimeline from '@salesforce/resourceUrl/hTimeline';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class LWC_TimePicker extends LightningElement 
{
    connectedCallback() {
        Promise.all([
            loadStyle(this, hTimeline + '/style.css'),
            loadScript(this, hTimeline + '/util.js'),
            loadScript(this, hTimeline + '/main.js'),
            loadScript(this, hTimeline + '/swipe-content.js'),
        ])
            .then(() => {
                this.initializeHTimeline();
            })
            .catch(error => {
                
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Error loading horizontaltimeline',
                        message: 'Error loading',
                        variant: 'error',
                    }),
                );
            });
    }

    initializeHTimeline() 
    {
        alert(this.template.querySelector('section'));
        tempDiv = this.template.querySelector('section');
        new HorizontalTimeline(tempDiv);
        //new HorizontalTimeline(document.getElementByID('myTimeline-1'));
        //document.getElementsByTagName("html")[0].className += " js";
    }
}