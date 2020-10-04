public class UpdateOppFromPB {
@invocableMethod   
    public static void updateOppChildRec(list<id> OppIds){
        list<opportunityLineItem> OppItem = [select id from opportunityLineItem where unitprice>10000 
                                             and OpportunityId in :OppIds];
        
        for(opportunityLineItem OppLineItem : OppItem){
            oppLineItem.Is_DeActivated__c =true;
        }
        try{
            UPDATE OppItem;
        } catch (Exception exp){
         system.debug('----Exception raised due to ---->'+exp.getMessage());
        }
        
    }

}