# Section 9: Built-in Query Functions & Operators

## **Lesson 161: Understanding EXISTS**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29469410#overview)
- [github - repo - statement to create table](https://github.com/academind/sql-complete-guide-code/blob/09-built-in-query-functions/sql/create-project/04-create-additional-tables.sql)
- [github - repo - statement to add table data](https://github.com/academind/sql-complete-guide-code/blob/09-built-in-query-functions/sql/create-project/05-insert-data-additional.sql)

---

### **Overview**

This lesson introduces the `EXISTS` operator in SQL, which is used to test for the existence of rows in a subquery. It is commonly used to filter records based on conditions in related tables.

---

### **Key Concepts**

#### 1. **What is `EXISTS`?**

- The `EXISTS` operator returns `TRUE` if the subquery returns at least one row.
- If the subquery returns no rows, `EXISTS` evaluates to `FALSE`.

**Syntax:**

```sql
SELECT column_name
FROM table_name
WHERE EXISTS (
    SELECT 1
    FROM related_table
    WHERE condition
);
```

---

#### 2. **How `EXISTS` Works**

- The subquery inside `EXISTS` is executed for each row in the outer query.
- As soon as the subquery finds a matching row, it stops execution and returns `TRUE`.

---

### **Practical Examples**

#### **1. Check Members with Active Memberships**

Find all members who have active memberships in the `MembershipRecords` table.

```sql
SELECT firstname, lastname
FROM members m
WHERE EXISTS (
    SELECT 1
    FROM membershiprecords mr
    WHERE m.memberid = mr.memberid
      AND mr.enddate > CURRENT_DATE
);
```

---

#### **2. Find Facilities with Bookings**

Retrieve all facilities that have at least one booking.

```sql
SELECT DISTINCT facilityname
FROM facilities f
WHERE EXISTS (
    SELECT 1
    FROM facilitiesbooking fb
    WHERE f.facilityid = fb.facilityid
);
```

---

#### **3. Filter Members with Specific Bookings**

List members who booked a facility within the last 7 days.

```sql
SELECT firstname, lastname
FROM members m
WHERE EXISTS (
    SELECT 1
    FROM facilitiesbooking fb
    WHERE m.memberid = fb.memberid
      AND fb.bookingdate >= CURRENT_DATE - INTERVAL '7 days'
);
```

---

### **When to Use `EXISTS`**

- Use `EXISTS` when you only need to check for the existence of rows and don’t care about the specific values.
- It is often faster than `JOIN` when the subquery is selective and stops at the first match.

---

### **Exercise**

1. Find members who have checked into the gym at least once.
2. Retrieve all trainers who are assigned to at least one member.
3. List all facilities with bookings made in 2024.

---

Let me know if you need help with these exercises or if you'd like to proceed to the next lesson! 😊
