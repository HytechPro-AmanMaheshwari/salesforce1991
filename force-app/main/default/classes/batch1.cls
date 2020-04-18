global class batch1 implements Database.Batchable<Sobject> {
public Integer count = 0;
    public static Integer size=0;
    global Database.QueryLocator start (Database.BatchableContext bc)
    {
        return Database.getQueryLocator('select id,name from opportunity');
    }
    global void execute (Database.BatchableContext bc, List<opportunity> scope)
    {
        for(opportunity op: scope)
        {
            count = count+1;
            size = size+1;
        }
    }
    global void finish (Database.BatchableContext bc)
    {
        Account a = new Account();
        a.Name = ' Count :' +count+ ' Size : ' +size;
        a.Phone = '8375869062';
        insert a;
        system.debug('sanjay baro');
    }
}