public class VWValveSearchController {

        public String selectedSeries{get; set;}
    public string strBonnetConstructionPrice { get; set;}
       // public List<String> output;
    	public String message;
    public string getmessage() {

            system.debug('This is value in get message  :  ' + message );
        return 'the new value';
    }
    public void updateModelTestTrimed() {
        strBonnetConstructionPrice = '320';
    }
       // public String ara {get; set;}
        public void araSeries() {
            message = 'this is the updated value';
                system.debug('Jarvis LOG: This is value of selectedSeries' + selectedSeries);
                system.debug('This is value of selected Switches  :  ' + selectedSeries );
            system.debug('This is value in fun  :  ' + message );
          //  message = selectedSeries;
        }
    
    
        public void getout()        {
        
            if(selectedSeries == 'ara')
            {
                system.debug('Jarvis LOG: This is value of selectedSeries'+ selectedSeries);
            }
            else if(selectedSeries == 'arb')
            {
                system.debug('Jarvis LOG: This is value of selectedSeries'+ selectedSeries);
            } else {
                system.debug('Jarvis LOG: Its empty');
               // system.debug('Jarvis LOG: This is value of selected Switches  :  '+ araSelectedSwitches);
            }
          //  return selectedSeries;
        }
        
        
           
}