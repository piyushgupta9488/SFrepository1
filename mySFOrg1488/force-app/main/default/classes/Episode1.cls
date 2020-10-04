public class Episode1 {
    
    public void  MyCode (){
        integer IntNum =10;
        string StrHello = ' Hello World !!!';
        system.debug(' The value of Integer: '+IntNum);
        system.debug(' The string is: '+strHello);
    }
    
    public enum season {summer, winter, spring}
    
    
    public void myList(){
        list<integer> LstInt =new list<integer>{10,20,30,20,10}; 
            for (integer i=0;i<LstInt.size();i++)
        {
            integer j =i+1;
            system.debug(' The '+j+' element in List is '+LstInt[i]);
        }
    }
    
    public void mySet(){
        set<string> SetStr = new set<string>{'a','b','d','c','a'};
            for(string i: setstr){
                integer j=1;
         		system.debug('the '+j+' element in set is: '+i);
                integer k=j+1;
            }
        
    }  
    
    public void mykey(){
        map<integer,string> Mapkey = new map<integer, string> {1=>'arnab',2=>'biswas',3=>'Chris'};
            for (integer i : mapkey.Keyset())   {
                system.debug(mapkey.get(i));	
            }
    }
    
}