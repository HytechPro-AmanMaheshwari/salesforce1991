global class Last10Days implements Database.Batchable <sobject> {
    global Database.QueryLocator start(Database.BatchableContext bc) {
        Date s = system.today() - 10;
        string query = 'select id from Account where createDate__c <:s';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<Account> acc)
    {
       if(acc.size() > 0)
       
           delete acc;
       
    }
    global void finish(Database.BatchableContext bc){
    }
    }