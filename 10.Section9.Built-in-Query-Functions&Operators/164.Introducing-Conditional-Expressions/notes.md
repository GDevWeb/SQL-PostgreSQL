# Section 9: Built-in Query Functions & Operators

## **Lesson 164: Introducing Conditional Expressions**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29334652#overview)

---

### **Overview**

This lesson introduces **conditional expressions** in SQL, which allow you to apply logic directly in queries to handle different scenarios. You’ll learn:

1. How to use `CASE` expressions for conditional logic.
2. Syntax and practical applications of `CASE`.
3. Differences between `CASE` and other SQL constructs.

---

### **Key Concepts**

#### 1. **`CASE` Expressions**

- The `CASE` expression adds conditional logic to SQL queries.
- It evaluates conditions and returns values based on the first condition that evaluates to `TRUE`.

**Syntax:**

```sql
CASE
    WHEN condition THEN result
    [WHEN condition THEN result ...]
    [ELSE result]
END
```

- Can be used in `SELECT`, `WHERE`, `ORDER BY`, and more.

---

### **Practical Examples**

#### **1. Categorize Members by Age**

Classify members into age groups.

```sql
SELECT firstname, lastname,
CASE
    WHEN age < 18 THEN 'Underage'
    WHEN age BETWEEN 18 AND 35 THEN 'Young Adult'
    WHEN age BETWEEN 36 AND 60 THEN 'Adult'
    ELSE 'Senior'
END AS age_group
FROM members;
```

---

#### **2. Flag Expiring Memberships**

Mark memberships as `Expiring Soon` if they expire within 30 days.

```sql
SELECT memberid, enddate,
CASE
    WHEN enddate <= CURRENT_DATE + INTERVAL '30 days' THEN 'Expiring Soon'
    ELSE 'Active'
END AS membership_status
FROM membershiprecords;
```

---

#### **3. Highlight Bookings by Size**

Categorize bookings based on the number of guests.

```sql
SELECT bookingdate, guests,
CASE
    WHEN guests <= 2 THEN 'Small'
    WHEN guests BETWEEN 3 AND 5 THEN 'Medium'
    ELSE 'Large'
END AS booking_size
FROM facilitiesbooking;
```

---

#### **4. Conditional Aggregation**

Use `CASE` within aggregate functions.

- Example: Count bookings based on payment methods.
  ```sql
  SELECT
      paymentmethodid,
      SUM(CASE WHEN tipped > 0 THEN 1 ELSE 0 END) AS tipped_count,
      SUM(CASE WHEN tipped = 0 THEN 1 ELSE 0 END) AS not_tipped_count
  FROM facilitiesbooking
  GROUP BY paymentmethodid;
  ```

---

### **Exercise**

1. Create a query to flag members as either `Active` or `Inactive` based on their membership status.
2. Categorize bookings into `Morning`, `Afternoon`, or `Evening` slots based on the booking time.
3. Use `CASE` to display membership types as `Standard`, `Premium`, or `Elite` based on a custom mapping of their IDs.

---

Let me know if you’re ready to tackle these exercises or need further clarification! 😊
