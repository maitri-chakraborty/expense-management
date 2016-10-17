@isTest
public class Expensetest1 {
 public testMethod static void myTest(){
      
        Expense__c expense = new Expense__c();
        expense.Amount__c=1000;
        expense.Event__c='party';
        insert expense;
        Member__c member = new Member__c();
        member.First_Name__c='abc';
        member.Last_Name__c='xyz';
        member.Email_Id__c='abc@abc.com';
        insert member;
        ExpenseMember__c expmem = new ExpenseMember__c();
        expmem.Member__c=member.Id;
        expmem.Expense__c=expense.Id;
        expmem.Contribution_Amount__c=100;
        insert expmem;
        ExpenseExtension expExt = new ExpenseExtension(new ApexPages.StandardController(expense));
        
        List<ExpenseMember__c> ge = new List<ExpenseMember__c>();
        ge = expExt.getExpMembers();
        //Expense__c expense1 = new Expense__c();
        //expense1 
        //List<ExpenseMember__c> ge1 = new List<ExpenseMember__c>();
        //ge1.add(expense);
        //System.assertEquals(ge1,ge);
}
}