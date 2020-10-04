public with sharing class TestOpenweather2 
{
    public string city{get;set;}
    public string temp{get;set;}

    public TestOpenweather2(ApexPages.StandardController stdcontroller) {
    Account account =(Account)stdcontroller.getRecord();
    account =[select id, Shippingcity from account where id=:account.id];
    
    string accountCity =account.shippingCity;
    string apikey = 'cb942858f395c34cca774b5fa7ef27af';
    
    string RequestEndPoint ='http://api.openweathermap.org/data/2.5/weather';
    RequestEndPoint+= '?q=' + accountCity;
   // RequestEndPoint+= '&units=metric';
    RequestEndPoint+= '&APPID=' + apikey;
    
    http Http =new http();
    httpRequest Request = new httpRequest();
    request.SetEndPoint(RequestEndPoint);
    request.Setmethod ('GET');
    httpResponse Response =http.send(request);
    
    if(response.getStatusCode() ==200)
    {
    map<string,object> results=(map<string,object>)JSON.deserializeUntyped(response.getbody());
    city = string.valueof(results.get('name'));
    
    map<string,object> mainresults=(map<string,object>)(results.get('main'));
    temp = string.valueof(mainresults.get('temp'));
    }
    
    else {
    Apexpages.message myMsg =new ApexPages.message(apexPages.severity.Error,'Error in Reading Data - Gugoriyas');
    ApexPages.addmessage(myMsg);
    }

    }

}