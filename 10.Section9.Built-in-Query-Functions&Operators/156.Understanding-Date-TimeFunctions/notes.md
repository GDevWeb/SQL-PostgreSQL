# Section 9: Built-in Query Functions & Operators

## **Lesson 156: Understanding Date/Time Functions**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29327498#overview)
- [postgresql - documentation - Date/Time Functions](https://www.postgresql.org/docs/current/functions-datetime.html)
- [mysql - documentation - Date/Time Functions](https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html)

---

### **Overview**

This lesson introduces SQL's built-in date and time functions. These functions help you manage, manipulate, and extract information from date and time data types. You’ll learn to:

1. Retrieve current date and time.
2. Extract specific parts of a date or time.
3. Perform calculations with dates and times.

---

### **Key Concepts**

#### 1. **Getting Current Date and Time**

- **`CURRENT_DATE`**: Returns the current date (without the time component).
  ```sql
  SELECT CURRENT_DATE AS today;
  ```
- **`CURRENT_TIME`**: Returns the current time (without the date component).
  ```sql
  SELECT CURRENT_TIME AS now;
  ```
- **`CURRENT_TIMESTAMP`**: Returns the current date and time.
  ```sql
  SELECT CURRENT_TIMESTAMP AS current_datetime;
  ```

#### 2. **Extracting Parts of a Date/Time**

Use the `EXTRACT()` function to retrieve specific parts of a date or time.

- Syntax:
  ```sql
  EXTRACT(part FROM date_column);
  ```
- Examples:
  ```sql
  SELECT EXTRACT(YEAR FROM CURRENT_DATE) AS year,
         EXTRACT(MONTH FROM CURRENT_DATE) AS month,
         EXTRACT(DAY FROM CURRENT_DATE) AS day;
  ```

#### 3. **Formatting Dates**

Use `TO_CHAR()` to format date and time values into readable strings.

- Example:
  ```sql
  SELECT TO_CHAR(CURRENT_DATE, 'YYYY-MM-DD') AS formatted_date;
  ```

#### 4. **Date Arithmetic**

Perform operations with dates:

- Add or subtract days using intervals.
  ```sql
  SELECT CURRENT_DATE + INTERVAL '10 days' AS future_date,
         CURRENT_DATE - INTERVAL '5 days' AS past_date;
  ```

#### 5. **Calculating Differences**

Use the `AGE()` function to calculate the difference between two dates.

- Example:
  ```sql
  SELECT AGE(CURRENT_DATE, DATE '2000-01-01') AS age_difference;
  ```

---

### **Practical Examples**

#### **1. Member Age**

Calculate the age of members based on their date of birth.

```sql
SELECT firstname, lastname, AGE(CURRENT_DATE, dateofbirth) AS age
FROM members;
```

#### **2. Membership Expiry**

Find memberships that expire within the next 30 days.

```sql
SELECT member_id, membership_end
FROM memberships
WHERE membership_end <= CURRENT_DATE + INTERVAL '30 days';
```

#### **3. Extract Day of the Week**

Find bookings made on a specific weekday.

```sql
SELECT booking_date, EXTRACT(DOW FROM booking_date) AS day_of_week
FROM facilities_booking;
```

---

### **Exercise**

1. Retrieve the year, month, and day for all members' dates of birth.
2. Calculate the age of each member and display it alongside their full name.
3. Find all bookings made in the last 7 days.

---
