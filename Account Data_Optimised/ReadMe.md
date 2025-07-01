# Account Contact & Opportunity Counter (Optimized with Maps) – Apex Class

This Apex class is an **optimized version** of a previously written `AccountData` class. It uses **Map**, **List**, and **relationship queries** to efficiently count related records (Contacts and Opportunities) for one or more Accounts based on their Website.

---

## 🧩 Problem Statement

> Given a website (e.g., `www.example.com`), fetch the **number of Contacts** and **number of Opportunities** related to any Account(s) that have this website.  
> If multiple Accounts share the same website (which is possible), get counts for each of them.

---

## 🚀 Why This Version Is Better (Compared to `AccountData`)

| Feature                           | `AccountData`                    | `Using_MAP_With_LIST` (This)     |
|----------------------------------|----------------------------------|----------------------------------|
| Handles multiple matching Accounts | ❌ No (only 1 with `LIMIT 1`)     | ✅ Yes (iterates through all)    |
| SOQL Query Count                 | ❌ 3 separate queries             | ✅ Just 1 query with subqueries  |
| Uses Maps for organized output   | ❌ No                             | ✅ Yes                           |
| Shows relationship field usage   | ❌ No                             | ✅ Yes (`a.Contacts`, `a.Opportunities`) |
| Scalability                      | ❌ Basic                         | ✅ Optimized for larger data sets |

---

## ⚙️ Method Signature

```apex
public static void fetch(String website)
```