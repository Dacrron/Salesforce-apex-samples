# Email-In-Lead-Contact – Apex Class

This Apex class is designed to handle **duplicate data issues** between the `Lead` and `Contact` objects in Salesforce based on a shared email address.

---

## 🧩 Problem Statement

In Salesforce, it's common for data duplication to occur between **Leads** and **Contacts**, especially when users submit forms or are manually imported from different sources.  
This creates issues where:

- A **Lead and a Contact may share the same email address**, leading to confusion in sales follow-up.
- There’s no clear link or awareness that two records represent the same person.

The goal is to:
- Check if a **Contact** with a given **email** exists.
  - If it does, and a **Lead** also exists with the same email:
    - Update both records’ descriptions to indicate the relationship.
  - If the Contact exists but has a different name:
    - Update the name fields to match the new input.
  - If the Contact already matches exactly:
    - Do nothing (return a message).
- If no Contact exists:
  - Create a new Contact with the provided name and email.

This logic prevents data duplication, updates existing records with better info, and keeps **Lead-to-Contact** relationships visible — **improving CRM hygiene**.

---

## ⚙️ Method Signature

```apex
public static String manageContact(String email, String fname, String lname)
