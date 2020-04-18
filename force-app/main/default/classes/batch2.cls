global class batch2 implements Database.Batchable<Sobject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        User u = [select id from User Where firstname = 'satish'];
        String query = 'select id,ownerid from Account where ownerid=\''+u.id+'\'';
        return Database.getQueryLocator(query);
    }
     global void execute(Database.BatchableContext bc,List<Account> scope){
        User u = [select id from User where firstname = 'wilson'];
        for(Account c : scope)
        {
            c.ownerid=u.id;
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        
    }

}