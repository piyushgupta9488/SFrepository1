public class Ep1 {
   
    public void ChangeInt (integer a){
        a=20;
        system.debug('method :'+a);
        system.debug('Hello i m in Vs code editor');
    }
    
    public void changeStr (Account a){
        a.name = 'name in method';
    }
    
    public void lstdemo (){
        list<integer> MyList= new list<integer>{1,3,5,3,4};
            system.debug('size of list : '+MyList.size());
            for (integer i=0;i<MyList.size();i++){
                system.debug(MyList[i]);
            }
        system.debug('the 4th element in set : '+MyList[3]);
    }
    
    public void setdemo(){
        set<integer> SetDemo = new set<integer>{1,3,5,3,4};
            system.debug('size of set : '+SetDemo.size());
        for(integer i: SetDemo){
            system.debug('Set :'+i);
        }
        //system.debug('the 4th element in set : '+Setdemo[3]);
    }
    
    public void MapDemo(){
        Map<integer,string> MyMap = new Map<integer,string>{1=>'one',2=>'two'};
            for (integer i: myMap.keyset()){
                system.debug(MyMap.get(i));
            }
            
    }
}