# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 83: Filtering In Action (WHERE In Action)** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28701338#overview)

---

### 🚀 **Goal of This Module**

In this module, we'll practice filtering data using the `WHERE` clause with various operators and techniques. You’ll gain hands-on experience applying filters to real-world data, helping you refine your SQL querying skills.

---

### 🛠️ **Sample Sales Table**

Before we begin, let's recap the structure of the `sales` table we'll be working with:

```sql
CREATE TABLE IF NOT EXISTS sales (
    id SERIAL PRIMARY KEY,
    date_created DATE NOT NULL,
    date_fulfilled DATE,
    customer_name VARCHAR(100) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    volume INTEGER CHECK (volume >= 0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
);
```

---

### 📝 **Sample Data**

Let's ensure we have some sample data to work with:

```sql
INSERT INTO sales (date_created, date_fulfilled, customer_name, product_name, volume, is_recurring, is_disputed)
VALUES
    ('2024-06-01', '2024-06-05', 'Alice Johnson', 'Laptop', 1500, TRUE, FALSE),
    ('2024-06-03', '2024-06-06', 'Bob Smith', 'Wireless Mouse', 200, FALSE, FALSE),
    ('2024-06-05', '2024-06-07', 'Catherine Lee', 'Keyboard', 50, FALSE, TRUE),
    ('2024-06-07', '2024-06-10', 'David Brown', 'Monitor', 3000, TRUE, TRUE),
    ('2024-06-08', '2024-06-09', 'Emma Wilson', 'Printer', 750, FALSE, FALSE),
    ('2024-06-09', NULL, 'Frank Harris', 'Desk Chair', 1200, TRUE, FALSE),
    ('2024-06-10', '2024-06-14', 'Grace Patel', 'Graphics Card', 5000, FALSE, TRUE),
    ('2024-06-12', '2024-06-15', 'Hannah Clarke', 'External SSD', 850, FALSE, FALSE),
    ('2024-06-15', '2024-06-18', 'Isaac Lewis', 'Webcam', 100, FALSE, FALSE),
    ('2024-06-17', '2024-06-19', 'Jane Doe', 'Headphones', 2500, TRUE, FALSE);
```

---

### 🛠️ **Filtering Scenarios**

#### 1. **Find Sales with Volume Greater Than 1000**

```sql
SELECT * FROM sales
WHERE volume > 1000;
```

✅ **What This Does**:  
Returns all sales where `volume` exceeds **1000**.

---

#### 2. **Find Disputed Sales**

```sql
SELECT * FROM sales
WHERE is_disputed = TRUE;
```

✅ **What This Does**:  
Returns all sales where `is_disputed` is set to **TRUE**.

---

#### 3. **Find Recurring Sales**

```sql
SELECT * FROM sales
WHERE is_recurring = TRUE;
```

✅ **What This Does**:  
Returns all sales where `is_recurring` is set to **TRUE**.

---

#### 4. **Find Sales Created Between Two Dates**

```sql
SELECT * FROM sales
WHERE date_created BETWEEN '2024-06-05' AND '2024-06-15';
```

✅ **What This Does**:  
Returns sales created between **June 5, 2024**, and **June 15, 2024**.

---

#### 5. **Find Sales Fulfilled Within 5 Days of Creation**

```sql
SELECT * FROM sales
WHERE date_fulfilled <= date_created + INTERVAL '5 days';
```

✅ **What This Does**:  
Finds all sales where `date_fulfilled` is within **5 days** of `date_created`.

---

#### 6. **Find Sales by Specific Customers**

```sql
SELECT * FROM sales
WHERE customer_name IN ('Alice Johnson', 'Bob Smith', 'Jane Doe');
```

✅ **What This Does**:  
Returns sales made by **Alice Johnson**, **Bob Smith**, or **Jane Doe**.

---

#### 7. **Find Sales with Specific Product Names**

```sql
SELECT * FROM sales
WHERE product_name LIKE 'Wireless%';
```

✅ **What This Does**:  
Returns sales where `product_name` starts with **“Wireless”**.

---

#### 8. **Find Sales with `NULL` Fulfillment Dates**

```sql
SELECT * FROM sales
WHERE date_fulfilled IS NULL;
```

✅ **What This Does**:  
Returns sales where `date_fulfilled` is `NULL`.

---

### 🔄 **Combining Conditions**

#### 9. **Find High-Volume, Non-Disputed Sales**

```sql
SELECT * FROM sales
WHERE volume > 2000 AND is_disputed = FALSE;
```

✅ **What This Does**:  
Returns sales with `volume` greater than **2000** that are **not disputed**.

---

### 📝 **Practice Tasks**

1. **Find Sales with Low Volume**:  
   Retrieve all sales where the `volume` is less than **500**.

2. **Find Sales Fulfilled After Creation Date**:  
   Find sales where `date_fulfilled` is **after** `date_created`.

3. **Find Sales with Volume Between 500 and 2000**:  
   Use the `BETWEEN` operator to filter sales by `volume` in this range.

4. **Find Sales by Customers Whose Names Start with “J”**:  
   Use the `LIKE` operator to filter customers whose names start with **“J”**.

5. **Find Recurring or Disputed Sales**:  
   Retrieve sales that are either **recurring** or **disputed**.

---

### 🌟 **Summary**

- The `WHERE` clause filters rows based on conditions.
- Comparison operators (`=`, `<>`, `>`, `<`, `>=`, `<=`) help create precise filters.
- Variations like `IN`, `BETWEEN`, `LIKE`, and `IS NULL` provide flexible filtering options.
- Combining conditions with `AND`, `OR`, and `NOT` allows for more complex queries.

Now, go ahead and practice these filtering tasks to strengthen your SQL skills! 🚀😊
