public class GilmoreLabs_LSPostProcessChosenSlot 
{
    @InvocableMethod(label='PostProcess LS Slot Choice' description='This will fetch Lightning Scheduler Slot data after a slot is chosen by GilmoreLabs Slot Picker')
    public static List<LSPostProcessOUT> getSlotPickerJSON(List<LSPostProcessIN> requests) 
    {
        List<LSPostProcessOUT> strResults = new List<LSPostProcessOUT>();
        LSPostProcessOUT strResult = new LSPostProcessOUT();
        
        List<ID> territoryIDs = new List<ID>();
        List<ID> resourceIDs = new List<ID>();
        
        for(LSPostProcessIN request : requests)
        {
            boolean candidateJSON = false;
            Map<String, Object> m = (Map<String, Object>) JSON.deserializeUntyped(request.LSJSON);
            List<Object> i;
            if(m.get('candidates') != null)
            {
                i = (List<Object>)m.get('candidates');
                candidateJSON = true;
            }
            else
            {
                i = (List<Object>)m.get('timeSlots');
            }
            
            //first loop through to get all the IDs
            for (Object o : i) 
            {
                Map<String, Object> slot = (Map<String, Object>) o;
                String strTerritoryId = (String)slot.get('territoryId');
                territoryIDs.add(strTerritoryId);
                
                if (candidateJSON)
                {
                    List<Object> lstResourceIDs = (List<Object>)slot.get('resources');
                    for (Object currentResourceID : lstResourceIDs)
                    {
                        resourceIDs.add((string)currentResourceID);
                    }
                }
            }
            
            //Get all the resource names and territory names
            Map<Id, ServiceTerritory> objTs = new Map<Id, ServiceTerritory>([Select ID, Name from ServiceTerritory WHERE ID IN: territoryIDs]);
            Map<Id, ServiceResource> objSRs = new Map<Id, ServiceResource>([Select ID, Name from ServiceResource WHERE ID IN: resourceIDs]);
            
            //Now loop to set all the variables
            for (Object o : i) 
            {
                Map<String, Object> slot = (Map<String, Object>) o;
                String strStartTime  = (String)slot.get('startTime');
                datetime dtStart = (datetime)json.deserialize('"' + strStartTime + '"', datetime.class);
                
                String strEndTime  = (String)slot.get('endTime');
                datetime dtEnd = (datetime)json.deserialize('"' + strEndTime + '"', datetime.class);
                
                String strTerritoryId = (String)slot.get('territoryId');
                String strTerritoryName = objTs.get(strTerritoryId).Name;
                
                List<Object> lstResourceIDs;
                List<string> strlstResourceIDs = new List<string>();
                String strResourceNames = '';
                if (candidateJSON)
                {
                    lstResourceIDs = (List<Object>)slot.get('resources');
                    for (Object currentResourceID : lstResourceIDs)
                    {
                        resourceIDs.add((string)currentResourceID);
                        strlstResourceIDs.add((string)currentResourceID);
                        strResourceNames += objSRs.get((string)currentResourceID).Name + ', ';
                    }
                    strResourceNames = strResourceNames.removeEnd(', ');
                }
                
                //See if the row matches
                string strMatchString = strTerritoryId + '_' + dtStart.getTime() + '_' + (lstResourceIDs != null ? string.join(lstResourceIDs,'_') : '');
                
                if (request.SelectedSlotID == strMatchString)
                {
                    //We have a match. Now populate the fields
                    strResult.TerritoryID = strTerritoryId;
                    strResult.TerritoryName = strTerritoryName;
                    strResult.StartTime = dtStart;
                    strResult.EndTime = dtEnd;
                    
                    if (candidateJSON && resourceIDs != null)
                    {
                        strResult.ResourceIDs = strlstResourceIDs;
                        strResult.FirstResourceID = String.valueof(strlstResourceIDs[0]);
                        strResult.ResourceNames = strResourceNames;
                    }
                    break;
                }
            }
        }
        
        strResults.add(strResult);
        return strResults;
    }
    
    public Class LSPostProcessOUT
    {
        @InvocableVariable
        public String TerritoryID;
        @InvocableVariable
        public String TerritoryName;
        @InvocableVariable
        public DateTime StartTime;
        @InvocableVariable
        public DateTime EndTime;
        @InvocableVariable
        public List<String> ResourceIDs;
        @InvocableVariable
        public String FirstResourceID;
        @InvocableVariable
        public String ResourceNames;
        
    }
    
    public Class LSPostProcessIN
    {
        @InvocableVariable
        public String LSJSON;
        @InvocableVariable
        public String SelectedSlotID;
    } 
}