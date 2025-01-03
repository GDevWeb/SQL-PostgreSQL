# Section 9: Built-in Query Functions & Operators

## **Lesson 158: Calculating INTERVALS**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29327506#overview)

---

### **Overview**

This lesson explores how to calculate date and time intervals in SQL. You'll learn how to:

1. Add and subtract intervals from dates.
2. Use intervals to calculate durations between dates.
3. Format and manipulate interval data.

---

### **Key Concepts**

#### 1. **Adding Intervals**

Use the `+` operator with `INTERVAL` to add time units to a date or timestamp.

- Syntax:
  ```sql
  SELECT CURRENT_DATE + INTERVAL '5 days' AS future_date;
  ```
- Supported units: `days`, `months`, `years`, `hours`, `minutes`, `seconds`.

#### 2. **Subtracting Intervals**

Use the `-` operator with `INTERVAL` to subtract time units.

- Example:
  ```sql
  SELECT CURRENT_DATE - INTERVAL '2 months' AS past_date;
  ```

#### 3. **Calculating Durations**

Subtract two dates or timestamps to calculate the interval between them.

- Example:
  ```sql
  SELECT AGE('2024-01-15', '2023-12-31') AS duration;
  ```

#### 4. **Formatting Intervals**

Use `EXTRACT()` to retrieve specific parts of an interval.

- Example:
  ```sql
  SELECT EXTRACT(DAY FROM (CURRENT_DATE - DATE '2023-12-01')) AS days_difference;
  ```

#### 5. **Using Intervals in Filtering**

Filter records based on calculated intervals.

- Example: Find memberships that expire within the next 30 days.
  ```sql
  SELECT *
  FROM memberships
  WHERE membership_end <= CURRENT_DATE + INTERVAL '30 days';
  ```

---

### **Practical Examples**

#### **1. Calculate Membership Duration**

Find the duration of all memberships in years, months, and days.

```sql
SELECT member_id, AGE(membership_end, membership_start) AS duration
FROM memberships;
```

#### **2. Extend Memberships**

Extend all memberships by 1 month.

```sql
UPDATE memberships
SET membership_end = membership_end + INTERVAL '1 month';
```

#### **3. Upcoming Check-Ins**

Find check-ins scheduled for the next 7 days.

```sql
SELECT *
FROM gym_checkin
WHERE checkin_date BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '7 days';
```

#### **4. Birthdays This Month**

Find members with birthdays in the current month.

```sql
SELECT firstname, lastname, dateofbirth
FROM members
WHERE EXTRACT(MONTH FROM dateofbirth) = EXTRACT(MONTH FROM CURRENT_DATE);
```

---

### **Exercise**

1. Calculate the remaining duration for all active memberships and display it alongside the member's full name.
2. Update all memberships to extend their expiration by 2 weeks.
3. Retrieve all bookings made in the last 30 days.
