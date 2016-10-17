public with sharing class ExpenseExtension {
    
    public Expense__c expObj{get;set;}//The "get" method is used to pass data from your Apex code to your Visualforce page and "set" method is used to pass values from your visualforce page to the controller.
    
    public ExpenseExtension(ApexPages.StandardController controller) {
        expObj = (Expense__c)controller.getRecord();// getRecord() method used for getting the created record id from the controller
    }
        public List<ExpenseMember__c>getExpMembers(){
        return [Select Id,Name,Member__r.First_Name__c,Member__r.Last_Name__c,Contribution_Amount__c from ExpenseMember__c where Expense__c =: expObj.Id];
       //using query fetching the values from database
    }
    
    
}