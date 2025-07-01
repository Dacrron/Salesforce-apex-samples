# Lead and Contact Email Management – Apex Class

This Apex class handles potential duplicate records between **Contacts** and **Leads** in Salesforce based on email addresses.

## 📌 Functionality

- Accepts an **Email**, **First Name**, and **Last Name** as input.
- Checks if a Contact already exists with that email:
  - If yes:
    - Updates the name if it's different.
    - Checks if a Lead with that email also exists.
    - Updates both records' descriptions to indicate duplication.
  - If no Contact exists:
    - Creates a new Contact with the provided info.

## ⚙️ Method Signature

```apex
public static String manageContact(String email, String fname, String lname)
```


## 💡 Sample Usage

You can test this class from the Execute Anonymous Window in Salesforce:

```apex
String result = Email_In_Lead_Contact.manageContact(
    'testuser@example.com',
    'Test',
    'User'
);
System.debug(result);

