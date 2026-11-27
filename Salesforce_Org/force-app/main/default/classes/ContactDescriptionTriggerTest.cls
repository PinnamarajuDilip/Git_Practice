@isTest
public class ContactDescriptionTriggerTest {
// This is a comment for pull command
    @isTest
    static void testEmptyDescription() {

        Contact con = new Contact(
            LastName = 'Rahul'
        );

        Test.startTest();
        insert con;
        Test.stopTest();

        Contact result = [
            SELECT Description
            FROM Contact
            WHERE Id = :con.Id
        ];

        System.assertEquals(
            'New Contact Created',
            result.Description
        );
    }

    @isTest
    static void testExistingDescription() {

        Contact con = new Contact(
            LastName = 'Ravi',
            Description = 'Existing Customer'
        );

        Test.startTest();
        insert con;
        Test.stopTest();

        Contact result = [
            SELECT Description
            FROM Contact
            WHERE Id = :con.Id
        ];

        System.assertEquals(
            'Existing Customer',
            result.Description
        );
    }
}
