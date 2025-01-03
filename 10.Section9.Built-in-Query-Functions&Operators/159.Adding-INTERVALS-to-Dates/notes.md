# Section 9: Built-in Query Functions & Operators

## **Lesson 159: Adding INTERVALS to Dates**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29333272#overview)
- [postgresql - documentation](https://www.postgresql.org/docs/9.5/functions-datetime.html)
- [postgresql - documentation](https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html)

---

### **Overview**

This lesson focuses on how to add intervals to dates to manipulate and project future or past dates in SQL. You will learn:

1. How to use `INTERVAL` to modify date values.
2. Practical applications for adding intervals to dates.

---

### **Key Concepts**

#### 1. **Adding Intervals**

Use the `+` operator to add an interval to a date or timestamp.

- Example: Add 10 days to the current date.
  ```sql
  SELECT CURRENT_DATE + INTERVAL '10 days' AS future_date;
  ```

#### 2. **Combining Intervals**

Add multiple intervals to calculate complex future or past dates.

- Example: Add 1 month and 5 days to a specific date.
  ```sql
  SELECT DATE '2024-01-01' + INTERVAL '1 month' + INTERVAL '5 days' AS adjusted_date;
  ```

#### 3. **Storing Updated Dates**

Modify date fields in tables by adding intervals.

- Example: Extend all memberships by 6 months.
  ```sql
  UPDATE memberships
  SET membership_end = membership_end + INTERVAL '6 months';
  ```

#### 4. **Filtering with Intervals**

Use intervals in `WHERE` clauses to filter data relative to the current date.

- Example: Find bookings scheduled in the next 7 days.
  ```sql
  SELECT *
  FROM facilities_booking
  WHERE booking_date BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '7 days';
  ```

---

### **Practical Examples**

#### **1. Calculate Membership Expiry**

Find all members whose memberships expire within the next 30 days.

```sql
SELECT member_id, membership_end
FROM memberships
WHERE membership_end <= CURRENT_DATE + INTERVAL '30 days';
```

#### **2. Schedule Future Events**

Schedule an event 2 weeks from today.

```sql
INSERT INTO events (event_date, description)
VALUES (CURRENT_DATE + INTERVAL '2 weeks', 'New Year Special Training');
```

#### **3. Calculate Next Check-In**

Determine the next check-in date for all members who checked in today.

```sql
SELECT member_id, checkin_date + INTERVAL '7 days' AS next_checkin
FROM gym_checkin
WHERE checkin_date = CURRENT_DATE;
```

---

### **Exercise**

1. Add 1 year to the membership end date for all members and display the updated dates.
2. Find members whose memberships will expire within 90 days.
3. Schedule a maintenance event for the gym exactly 1 month from today.
