@isTest
private class AccountControllerTest {
    
    @TestSetup
    static void setupTestData() {
        Account testAccount = new Account(
            Name = 'Controller Test Account',
            Type = 'Customer',
            Phone = '555-123-4567'
        );
        insert testAccount;
    }
    
    @isTest
    static void testGetAllAccounts() {
        Test.startTest();
        List<Account> accounts = AccountController.getAllAccounts();
        Test.stopTest();
        
        Assert.areEqual(1, accounts.size(), 'Should return 1 account via controller');
        Assert.areEqual('Controller Test Account', accounts[0].Name, 'Account name should match'); 
    }
}