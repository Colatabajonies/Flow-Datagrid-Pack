public class GilmoreLabs_ProgressSimulatorController 
{
    @AuraEnabled
    public static Integer updateProgress(Integer currentProgress, Integer speed) 
    {
        //Change to do actual things if not running simulation
        return currentProgress + speed;
    }
}