# Account Data Fetch – Apex Class

This Apex class fetches data related to an **Account** based on its **Website** field and counts the number of associated **Contacts** and **Opportunities**.

It showcases **cross-object querying in Salesforce**, which is essential for building efficient and context-aware business logic.

---

## 📌 What It Does

- Accepts a **Website (String)** as input.
- Tries to find an `Account` with that website.
- If none is found:
  - Logs "No account found..."
- If found:
  - Logs the Account name
  - Counts and logs:
    - Total `Contact` records linked to that Account
    - Total `Opportunity` records linked to that Account

This is useful for reporting and validation in CRM workflows, and demonstrates strong understanding of **object relationships in Apex**.

---

## ⚙️ Method Signature

```apex
public static void getAccountData(String website)
```