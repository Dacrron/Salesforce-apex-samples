public class Email_In_Lead_Contact {
    
    
      public static String manageContact(String email, String fname, String lname) {
        // Check if Email exists
        List<Contact> existingContacts = [SELECT Id, FirstName, LastName FROM Contact WHERE Email = :email LIMIT 1];
        List<Lead> existingLeads = [Select Id, Name from Lead where Email = :email Limit 1];
          
        if (!existingContacts.isEmpty()) {
            Contact existingContact = existingContacts[0];
            if(!existingLeads.isEmpty()){
           		Lead existingLead = existingLeads[0];
                existingLead.Description = 'There is a contact which has same email address with ID: '+ existingContact.ID;
                update existingLead;
                existingContact.Description = 'There is a lead which has email address with ID: ' + existingLead.ID;
                update existingContact;
 
        	}
            // Check if First Name and Last Name match
            if (existingContact.FirstName == fname && existingContact.LastName == lname) {
                return 'Contact already exists.';
            } else {
                
                existingContact.FirstName = fname;
                existingContact.LastName = lname;
                update existingContact;
                return 'Record updated successfully.';
            }
        } else {
            // Create a new Contact
            Contact newContact = new Contact(FirstName = fname,LastName = lname,Email = email);
            insert newContact;
            return 'New contact created successfully.';
        }
    }
}