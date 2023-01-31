public class UnsafeSOQL {

        public static Id getId(String name) {
        	List<Account> acc = Database.query('SELECT Id FROM Account WHERE Name LIKE \'%' + name + '%\'');
            return acc[0].Id;
        }
}