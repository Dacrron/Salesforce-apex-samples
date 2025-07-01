public class Using_MAP_With_LIST {
    
    public static void fetch(String website)
    {
        Map<String, Integer> Contacts_Count = new Map<String, Integer>();
        Map<String, Integer> Opp_Count = new Map<String, Integer>();

        List<Account> acc_list = [SELECT ID, Website,
                                  (SELECT ID FROM Contacts),
                                  (SELECT ID FROM Opportunities)
                                  FROM Account WHERE Website = :website];

        for (Account a : acc_list) {
            Contacts_Count.put(a.Website, a.Contacts.size());
            Opp_Count.put(a.Website, a.Opportunities.size());
        }

        for (String site : Contacts_Count.keySet()) {
            System.debug('Website: ' + site);
            System.debug('Contacts: ' + Contacts_Count.get(site));
            System.debug('Opportunities: ' + Opp_Count.get(site));
        }
    }
}
