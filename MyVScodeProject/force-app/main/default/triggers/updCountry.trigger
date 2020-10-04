trigger updCountry on JobOpenings__c (before Insert) {
JobOpenings__C Job = new JobOpenings__C ();
job.country__c = 'B4 Trgr Country';
insert job;
}