trigger TriggerNoDeleteAllowed on sampler__c (before delete) {
    
    for(sampler__c smpl: Trigger.old){
        
        if(smpl.Price__c !=null){
            smpl.AddError('Deletion Not Allowed - when Price is Present'); 
        }
           
        }
}