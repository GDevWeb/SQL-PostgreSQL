# Section 9: Built-in Query Functions & Operators

## **Lesson 163: Working with Subquery Expressions and IN**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29334640#overview)
- [github - repo - statement to add customer](https://github.com/academind/sql-complete-guide-code/blob/09-built-in-query-functions/sql/create-project/05.01-add-customer.sql)

---

### **Overview**

This lesson focuses on using the `IN` operator with subqueries for filtering data. You’ll learn:

1. The syntax and purpose of the `IN` operator.
2. Differences between `IN` and `EXISTS`.
3. Practical use cases for `IN` with subqueries.

---

### **Key Concepts**

#### 1. **The `IN` Operator**

- The `IN` operator checks if a value matches any value in a list or a subquery.
- Useful for filtering rows based on a set of values.

**Syntax:**

```sql
SELECT column_name
FROM table_name
WHERE column_name IN (value1, value2, ...);
```

#### 2. **Using `IN` with Subqueries**

- Subqueries can replace a static list of values.
- Example: Find members who booked a specific facility.
  ```sql
  SELECT firstname, lastname
  FROM members
  WHERE memberid IN (
      SELECT memberid
      FROM facilitiesbooking
      WHERE facilityid = 1
  );
  ```

---

#### 3. **Differences Between `IN` and `EXISTS`**

- **`IN`**:
  - Compares a column value against a list or subquery result set.
  - Simpler for checking a single column.
- **`EXISTS`**:
  - Checks for the existence of rows that meet the condition.
  - Useful for more complex conditions or when rows from multiple tables are involved.

---

### **Practical Examples**

#### **1. Members with Active Memberships**

Retrieve all members with active memberships.

```sql
SELECT firstname, lastname
FROM members
WHERE memberid IN (
    SELECT memberid
    FROM membershiprecords
    WHERE enddate > CURRENT_DATE
);
```

---

#### **2. Facilities Used by Specific Members**

Find all facilities booked by members with IDs 1, 2, or 3.

```sql
SELECT facilityname
FROM facilities
WHERE facilityid IN (
    SELECT facilityid
    FROM facilitiesbooking
    WHERE memberid IN (1, 2, 3)
);
```

---

#### **3. Membership Types with Active Users**

List all membership types that have at least one active user.

```sql
SELECT membershipname
FROM membershiptypes
WHERE membershipid IN (
    SELECT membershipid
    FROM membershiprecords
    WHERE enddate > CURRENT_DATE
);
```

---

### **Exercise**

1. Find all members who have booked facilities in the last 7 days.
2. Retrieve all trainers assigned to members who have checked into the gym.
3. List all facilities used by members with active memberships.

---

Let me know if you’re ready to work on these exercises or proceed to the next lesson! 😊
