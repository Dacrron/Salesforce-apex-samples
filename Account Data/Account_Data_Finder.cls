public class AccountData {
    public static void getAccountData(String website) {
        Account acc = [SELECT Id, Name FROM Account  WHERE Website = :website LIMIT 1];
 
        if (acc == null) {
            System.debug('No account found for the website: ' + website);
            return;
        }
 
        
        Integer contactCount = [SELECT COUNT() FROM Contact WHERE AccountId = :acc.Id];
 
        
        Integer opportunityCount = [SELECT COUNT() FROM Opportunity WHERE AccountId = :acc.Id];
 
        
        System.debug('Account Found: ' + acc.Name);
        System.debug('Number of Contacts: ' + contactCount);
        System.debug('Number of Opportunities: ' + opportunityCount);
    }
}