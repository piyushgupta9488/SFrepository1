global with sharing class poistionController {

     public Position__c pos{get;set;}

     public poistionController() {

         pos = [select Max_Pay__c, min_pay__C from Position__c where name = 'senior BA'];

      }

}