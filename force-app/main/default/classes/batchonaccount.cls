global class batchonaccount implements Database.Batchable<Sobject> {
    global string Field;
    global string Field_Value;
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('select id,Name from Account where Billing Address = CA');
    }
    global void execute(Database.BatchableContext bc, List<Account> scope)
    {
        for(Account a : scope)
        {
            a.put(Field, Field_Value);
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc)
    {
        
    }
}