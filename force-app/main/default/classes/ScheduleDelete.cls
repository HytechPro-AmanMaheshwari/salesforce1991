@isTest
global class ScheduleDelete implements Schedulable{
    global void execute (SchedulableContext sc){
        String CRON_EXP1 = '0 0 12 0 * * ?';
        ScheduleDelete bt1 = new ScheduleDelete();
        System.schedule('every 12 hour Batch Schedule', CRON_EXP1, bt1);
        Last10Days ab = new Last10Days();
        Test.startTest();
        database.executebatch(ab);
        Test.stopTest();
    }
}