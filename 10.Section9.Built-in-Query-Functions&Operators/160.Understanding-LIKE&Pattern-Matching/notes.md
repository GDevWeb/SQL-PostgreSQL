# Section 9: Built-in Query Functions & Operators

## **Lesson 160: Understanding LIKE & Pattern Matching**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29334602#overview)

---

### **Overview**

This lesson introduces SQL’s `LIKE` operator and pattern matching capabilities. These tools allow you to filter text-based data using flexible patterns. You’ll learn:

1. How to use the `LIKE` operator.
2. The role of wildcards (`%` and `_`) in pattern matching.
3. Practical applications for pattern matching in queries.

---

### **Key Concepts**

#### 1. **LIKE Operator**

The `LIKE` operator is used in the `WHERE` clause to filter records based on specific patterns in text columns.

**Syntax**:

```sql
SELECT column_name
FROM table_name
WHERE column_name LIKE 'pattern';
```

---

#### 2. **Wildcards in Patterns**

- **`%`**: Matches zero or more characters.

  - Example: Find members whose names start with "A".
    ```sql
    SELECT *
    FROM members
    WHERE firstname LIKE 'A%';
    ```

- **`_`**: Matches exactly one character.
  - Example: Find members whose names are four letters long and start with "J".
    ```sql
    SELECT *
    FROM members
    WHERE firstname LIKE 'J___';
    ```

---

#### 3. **Case Sensitivity**

- By default, `LIKE` is **case-insensitive** in PostgreSQL.
- Use `ILIKE` for case-insensitive matching explicitly:
  ```sql
  SELECT *
  FROM members
  WHERE firstname ILIKE 'a%';
  ```

---

#### 4. **Combining with Other Conditions**

You can combine `LIKE` with other filtering conditions using `AND` or `OR`.

- Example: Find members whose first names start with "A" or last names contain "son".
  ```sql
  SELECT *
  FROM members
  WHERE firstname LIKE 'A%' OR lastname LIKE '%son%';
  ```

---

### **Practical Examples**

#### **1. Search by Email Domain**

Find members with emails hosted on Gmail.

```sql
SELECT firstname, lastname, email
FROM members
WHERE email LIKE '%@gmail.com';
```

#### **2. Filter Membership Names**

Find all membership types containing the word "gold".

```sql
SELECT *
FROM membershiptypes
WHERE membershipname ILIKE '%gold%';
```

#### **3. Partial Matching for Events**

Retrieve events whose names include "maintenance".

```sql
SELECT *
FROM events
WHERE eventname ILIKE '%maintenance%';
```

---

### **Exercise**

1. Retrieve all members whose first names contain the letter "e".
2. Find bookings where the `booking_date` starts with "2024-01".
3. List all email addresses ending with ".com".

---

Let me know if you’re ready to dive into these exercises or move to the next lesson! 😊
