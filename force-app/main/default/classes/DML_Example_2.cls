public class DML_Example_2 {
    public Account acc     {set; get;}
    public opportunity opp {set; get;}
    public DML_Example_2 ()
    {
        acc= new Account();
        opp= new Opportunity();
    }
    public PageReference create(){
        insert acc;
        opp.accountId = acc.Id;
        insert opp;
        PageReference p = new PageReference('/'+acc.Id);
        return p;
    }
    public void cancel()
    {
        acc = new Account();
        opp = new Opportunity();
    }
}