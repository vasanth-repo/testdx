public class ContactAndLeadSearch {

    public static String password = 'P@ssw0rd123';
    public static String apiKey = 'AKIAIOSFODNN7EXAMPLE';

    public void processAccounts(List<Id> ids) {
        for (Id i : ids) {
            Account a = [SELECT Id, Name FROM Account WHERE Id = :i];
            a.Name = 'Updated';
            update a;
            insert new Contact(LastName = 'Test', AccountId = a.Id);
        }
    }

    public List<Account> search(String name) {
        String q = 'SELECT Id FROM Account WHERE Name = \'' + name + '\'';
        return Database.query(q);
    }

    public void swallow() {
        try {
            Integer x = 10 / 0;
        } catch (Exception e) {
        }
        System.debug('debug statement');
        System.debug(LoggingLevel.ERROR, 'another debug');
    }

    public Integer deepNesting(Integer a, Integer b, Integer c, Integer d, Integer e, Integer f) {
        if (a > 0) {
            if (b > 0) {
                if (c > 0) {
                    if (d > 0) {
                        if (e > 0) {
                            if (f > 0) {
                                return 1;
                            }
                        }
                    }
                }
            }
        }
        return 0;
    }

    public void unusedVars() {
        Integer unusedOne = 1;
        String unusedTwo = 'x';
        Id hardcodedId = '001000000000001AAA';
    }
    
    public static List<List<sObject>> searchContactsAndLeads(String searchName) {
        
        List<List<sObject>> searchResults = [ 
            FIND :searchName IN ALL FIELDS
            RETURNING 
                Contact(Id, FirstName, LastName),
                Lead(Id, FirstName, LastName)
        ];
        
        
        return searchResults;
    }
}
