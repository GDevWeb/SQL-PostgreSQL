# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 87: Working with Dates & Date Differences** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763144#overview)

---

### 🚀 **Goal of This Module**

In this module, you'll learn how to work with dates and calculate date differences in SQL. These skills are essential for tasks like tracking orders, measuring time intervals, and performing date-based analysis.

---

### 📅 **Date Data Types in SQL**

Different SQL databases support various date and time data types. In PostgreSQL, the primary types are:

1. **`DATE`**: Stores only the date (e.g., `2024-06-01`).
2. **`TIMESTAMP`**: Stores date and time (e.g., `2024-06-01 10:30:00`).
3. **`TIMESTAMPTZ`**: Stores date and time with a time zone.

---

### 🛠️ **Inserting Date Values**

Let’s insert some sample data into the `sales` table, which includes date fields.

```sql
INSERT INTO sales (date_created, date_fulfilled, customer_name, product_name, volume, is_recurring, is_disputed)
VALUES
    ('2024-06-01', '2024-06-05', 'Alice Johnson', 'Laptop', 1500, TRUE, FALSE),
    ('2024-06-03', '2024-06-06', 'Bob Smith', 'Wireless Mouse', 200, FALSE, FALSE),
    ('2024-06-05', '2024-06-07', 'David Brown', 'Monitor', 3000, TRUE, TRUE),
    ('2024-06-07', NULL, 'Emma Wilson', 'Printer', 750, FALSE, FALSE),
    ('2024-06-10', '2024-06-14', 'Jane Doe', 'Headphones', 2500, TRUE, FALSE);
```

---

### 🕒 **Calculating Date Differences**

In PostgreSQL, you can subtract dates to find the difference in days.

#### 1. **Simple Date Difference**

Find the number of days between `date_created` and `date_fulfilled`.

```sql
SELECT
    customer_name,
    product_name,
    date_created,
    date_fulfilled,
    date_fulfilled - date_created AS days_to_fulfill
FROM sales;
```

✅ **Result**:

| **customer_name** | **product_name** | **date_created** | **date_fulfilled** | **days_to_fulfill** |
| ----------------- | ---------------- | ---------------- | ------------------ | ------------------- |
| Alice Johnson     | Laptop           | 2024-06-01       | 2024-06-05         | 4                   |
| Bob Smith         | Wireless Mouse   | 2024-06-03       | 2024-06-06         | 3                   |
| David Brown       | Monitor          | 2024-06-05       | 2024-06-07         | 2                   |
| Emma Wilson       | Printer          | 2024-06-07       | NULL               | NULL                |
| Jane Doe          | Headphones       | 2024-06-10       | 2024-06-14         | 4                   |

---

### ⏳ **Filtering Based on Date Differences**

#### 2. **Find Sales Fulfilled Within 5 Days**

```sql
SELECT *
FROM sales
WHERE date_fulfilled - date_created <= 5;
```

✅ **What This Does**:  
Retrieves sales where the time between `date_created` and `date_fulfilled` is **5 days or fewer**.

---

### 📆 **Working with Current Date**

#### 3. **Find Sales Created in the Last 7 Days**

You can use `CURRENT_DATE` to get today’s date and compare it with `date_created`.

```sql
SELECT *
FROM sales
WHERE date_created >= CURRENT_DATE - INTERVAL '7 days';
```

✅ **What This Does**:  
Returns sales created within the last 7 days.

---

### 🔄 **Date Arithmetic with Intervals**

#### 4. **Adding or Subtracting Days**

Add 10 days to the `date_created` to predict a future fulfillment date.

```sql
SELECT
    customer_name,
    product_name,
    date_created,
    date_created + INTERVAL '10 days' AS predicted_fulfillment_date
FROM sales;
```

✅ **Result**:

| **customer_name** | **product_name** | **date_created** | **predicted_fulfillment_date** |
| ----------------- | ---------------- | ---------------- | ------------------------------ |
| Alice Johnson     | Laptop           | 2024-06-01       | 2024-06-11                     |
| Bob Smith         | Wireless Mouse   | 2024-06-03       | 2024-06-13                     |
| David Brown       | Monitor          | 2024-06-05       | 2024-06-15                     |

---

### ⏰ **Extracting Parts of a Date**

You can use the `EXTRACT` function to get specific parts of a date, such as the year, month, or day.

#### 5. **Extract Year, Month, and Day**

```sql
SELECT
    customer_name,
    date_created,
    EXTRACT(YEAR FROM date_created) AS year,
    EXTRACT(MONTH FROM date_created) AS month,
    EXTRACT(DAY FROM date_created) AS day
FROM sales;
```

✅ **Result**:

| **customer_name** | **date_created** | **year** | **month** | **day** |
| ----------------- | ---------------- | -------- | --------- | ------- |
| Alice Johnson     | 2024-06-01       | 2024     | 6         | 1       |
| Bob Smith         | 2024-06-03       | 2024     | 6         | 3       |

---

### 📝 **Practice Tasks**

1. **Calculate Fulfillment Time**:  
   Retrieve all sales and calculate the number of days between `date_created` and `date_fulfilled`.

2. **Filter Recent Sales**:  
   Find all sales created within the last **10 days**.

3. **Predict Fulfillment Date**:  
   For sales where `date_fulfilled` is `NULL`, predict a fulfillment date by adding **5 days** to `date_created`.

4. **Extract Date Parts**:  
   List all sales with the year, month, and day extracted from `date_created`.

5. **Filter by Fulfillment Time**:  
   Find all sales where the fulfillment time is **3 days or fewer**.

---

### 🌟 **Summary**

- **Date Subtraction**: Calculate date differences by subtracting dates.
- **Current Date**: Use `CURRENT_DATE` to work with today’s date.
- **Date Arithmetic**: Add or subtract days using `INTERVAL`.
- **Extract Date Parts**: Use `EXTRACT` to get year, month, or day from a date.
- **Filtering**: Apply filters based on date ranges and differences.

Now it’s time to practice working with dates and date differences in your queries! 🚀😊
