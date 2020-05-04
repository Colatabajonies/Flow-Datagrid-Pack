public class GilmoreLabs_FlowSlotPickerAController 
{
    Public String EventLIs{get; set;}
    Public String EventContentLIs{get; set;}
    Public String inputJSON {get;set;}
    Public List<Datetime> lstDTs {get;set;}
    
    Public GilmoreLabs_FlowSlotPickerAController()
    {
        
    }
    
    Public void loadGrid()
    {
        List<Date> lstDates = new List<Date>();
        EventLIs = '';
        EventContentLIs = '';
        
        //Loop through the JSON, and add the dates
        List<Object> lstJSON = (List<Object>)JSON.deserializeUntyped(inputJSON);
        List<GilmoreSlot> lstGSlots = new List<GilmoreSlot>(); 
        for (Object currentObj : lstJSON)
        {
            Map<String,Object> theObj = (Map<String,Object>)currentObj;
            GilmoreSlot newSlot = new GilmoreSlot();
            newSlot.id = (String)theObj.get('id');
            newSlot.displaytext = theObj.get('displaytext') == null ? '' : String.valueof(theObj.get('displaytext'));
            newSlot.timestamp = (Long)theObj.get('timestamp');
            lstGSlots.add(newSlot);
        }
        
        lstGSlots.sort();
        
        for (GilmoreSlot currentObj : lstGSlots)
        {
            DateTime currentTime = Datetime.newInstance(currentObj.timestamp);
            system.debug(currentTime.format());
            if (!lstDates.contains(currentTime.date()))
            {
                EventLIs += '<li><a ' + (lstDates.size() == 0 ? 'class="selected" ' : '') + 'href="#0" data-date="' + currentTime.month() + '/' + currentTime.day() + '/' + currentTime.year() + '">' + currentTime.format('EEE') + '<br />' + currentTime.day() + ' ' + currentTime.format('MMM ') + '<br /><span style="font-size:.5rem;">##REPLACE' + String.valueof(currentTime.dayOfYear()) + String.valueof(currentTime.year()) + '##</span></a></li>';
                //Add to the currentTime
                lstDates.add(currentTime.date());
            }
        }
        
        //Now loop through the dates, and add the content
        for (Date currentDate : lstDates)
        {
            integer slotCount = 0;
            
            EventContentLIs += '<li ' + (lstDates.indexOf(currentDate) == 0 ? 'class="selected" ' : '') + 'data-date="' + currentDate.month() + '/' + currentDate.day() + '/' + currentDate.year() + '"><fieldset class="slds-form-element"><legend class="slds-form-element__legend slds-form-element__label">Select an option</legend><div class="slds-form-element__control" style="display: flex;flex-wrap: wrap;">';
            
            //Loop through the JSON
            for (GilmoreSlot currentObj : lstGSlots)
            {
                DateTime currentTime = Datetime.newInstance(currentObj.timestamp);
                String strContent = currentObj.displaytext;
                
                if (currentTime.date().dayOfYear() == currentDate.dayOfYear() && currentTime.date().year() == currentDate.year())
                {
                    //Another slot found for a day
                    slotCount ++;
                    
                    String currentIndex = currentObj.id;
                    //Add the content
                    EventContentLIs += '<div class="slds-visual-picker slds-visual-picker_vertical" style="width:20rem;margin-right:10px;margin-bottom:1rem;margin-top:0;" onclick="window.parent.postMessage(\'' + currentIndex + ',' + currentTime.getTime() + '\', \'*\');">' +
                        '<input type="radio" id="visual-picker-' + currentIndex + '" name="options" value="visual-picker-' + currentIndex + '" /><label for="visual-picker-' + currentIndex + '">' + 
                        '<span class="slds-visual-picker__figure slds-visual-picker__text slds-align_absolute-center" style="width:20rem;">' +
                        '<span><span class="slds-text-heading_medium" style="text-decoration:none;">' + currentTime.format('h:mm a') + '</span>' + 
                        '<span class="slds-text-title">' + strContent + '</span>' +
                        '</span></span><span class="slds-icon_container slds-visual-picker__text-check"><svg class="slds-icon slds-icon-text-check slds-icon_x-small" aria-hidden="true">' +
                        '<use href="/_slds/icons/utility-sprite/svg/symbols.svg#check" /></svg></span></label></div>';
                }
            }
            EventContentLIs += '</div></fieldset></li>';
            
            //Update the slot count in the event list
            EventLIs = EventLIs.replace('##REPLACE' + currentDate.dayOfYear() + currentDate.year() + '##', slotCount + ' slot(s)');
        }
    }
    
    Public class GilmoreSlot implements Comparable
    {
        Public string displaytext {get;set;}
        Public string id {get;set;}
        Public Long timestamp {get;set;}
        
        // Compare opportunities based on the opportunity amount.
        Public Integer compareTo(Object compareTo) {
            // Cast argument to OpportunityWrapper
            GilmoreSlot compareToOppy = (GilmoreSlot)compareTo;
            
            // The return value of 0 indicates that both elements are equal.
            Integer returnValue = 0;
            if (timestamp > compareToOppy.timestamp) {
                // Set return value to a positive value.
                returnValue = 1;
            } else if (timestamp < compareToOppy.timestamp) {
                // Set return value to a negative value.
                returnValue = -1;
            }
            
            return returnValue;       
        }
    }
}