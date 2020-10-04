public class esp2 {

    public enum medal {GOLD, SILVER, BRONZE}
    
    
    public void knowYourMedal(esp2.medal EnmMedal){
        switch on EnmMedal{
            when GOLD {
                system.debug('1st');
            }
            when SILVER {
                system.debug('2nd');
            }
            when else{
                system.debug('invalid');
            }
        } // switch case ends
    
    } //method ends
    
} // class ends