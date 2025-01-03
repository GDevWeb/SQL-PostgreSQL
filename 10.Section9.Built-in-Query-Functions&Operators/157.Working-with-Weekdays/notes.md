# Section 9: Built-in Query Functions & Operators

## **157. Working with Weekdays**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29329890#overview)

---

### **Overview**

This lesson focuses on handling weekdays in SQL. You’ll learn how to:

1. Extract the day of the week from a date.
2. Filter records based on specific weekdays.
3. Use weekday information for reporting and scheduling.

---

### **Key Concepts**

#### 1. **Extracting the Day of the Week**

Use the `EXTRACT()` function with `DOW` to get the day of the week:

- **`DOW`**: Returns the day of the week as an integer (0 = Sunday, 1 = Monday, ..., 6 = Saturday).
  ```sql
  SELECT booking_date, EXTRACT(DOW FROM booking_date) AS day_of_week
  FROM facilities_booking;
  ```

#### 2. **Filtering by Weekday**

Use the result of `EXTRACT(DOW FROM ...)` to filter rows based on specific weekdays:

- Example: Find all bookings made on Mondays (day 1).
  ```sql
  SELECT *
  FROM facilities_booking
  WHERE EXTRACT(DOW FROM booking_date) = 1;
  ```

#### 3. **Formatting Weekday Names**

Use `TO_CHAR()` to retrieve and format the name of the weekday:

- Example: Display the weekday name for each booking date.
  ```sql
  SELECT booking_date, TO_CHAR(booking_date, 'Day') AS weekday_name
  FROM facilities_booking;
  ```

---

### **Practical Examples**

#### **1. Popular Booking Days**

Find the most popular day for bookings.

```sql
SELECT EXTRACT(DOW FROM booking_date) AS day_of_week, COUNT(*) AS total_bookings
FROM facilities_booking
GROUP BY EXTRACT(DOW FROM booking_date)
ORDER BY total_bookings DESC;
```

#### **2. Weekend Bookings**

Retrieve all bookings made on weekends (Saturday or Sunday).

```sql
SELECT *
FROM facilities_booking
WHERE EXTRACT(DOW FROM booking_date) IN (0, 6);
```

#### **3. Upcoming Weekday Events**

Find events scheduled on the next Monday.

```sql
SELECT *
FROM facilities_booking
WHERE booking_date = CURRENT_DATE + (7 - EXTRACT(DOW FROM CURRENT_DATE) + 1) % 7;
```

---

### **Exercise**

1. List all bookings grouped by weekday, showing the total number of bookings for each day.
2. Retrieve all bookings made on Fridays (day 5).
3. Display each booking date alongside the weekday name.

---

Let me know if you need help with these exercises or if you'd like to proceed to the next lesson! 😊
