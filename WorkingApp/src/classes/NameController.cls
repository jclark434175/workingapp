public class NameController {
	

    @AuraEnabled
    public static String getId(String name) {
        return String.valueOf(UnsafeSOQL.getId(name));
    }
    
    @AuraEnabled
    public static void setName(String name, String id) {
        Id obj_id = (Id)id;
        Account acc = [SELECT Name, Id FROM Account WHERE Id=:obj_id][0];
        acc.Name = name;
        update acc;
    }
}