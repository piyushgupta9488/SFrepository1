public class Episode2 {
    
    public enum Medal {Gold,Silver,Bronze}
    
    public void knowYourMedal(Episode2.medal enmMedalcolor){
        
        switch on enmMedalcolor{
            when Gold {
                system.debug('1st');
            }
            when Silver {
                system.debug('2nd');
            }
            when Bronze {
                system.debug('3rd');
            }
            when else {
                system.debug('invalid');
            }
    } //switch
    } //method
} //Ep2