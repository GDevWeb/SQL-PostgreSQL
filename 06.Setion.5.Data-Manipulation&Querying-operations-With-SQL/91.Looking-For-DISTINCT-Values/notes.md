# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 91: Looking for `DISTINCT` Values** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763160#overview)

---

### 🚀 **Goal of This Module**

In this module, you’ll learn how to use the `DISTINCT` keyword to retrieve unique values in SQL. This is useful for filtering out duplicate entries and getting a list of distinct records in your queries.

---

### 🛠️ **What is `DISTINCT`?**

The `DISTINCT` keyword ensures that only unique values are returned in the query results by removing duplicates.

**Basic Syntax**:

```sql
SELECT DISTINCT column1, column2, ...
FROM table_name;
```

- If you select multiple columns with `DISTINCT`, the combination of those columns will be considered for uniqueness.

---

### 🗃️ **Sample Data: The Sales Table**

We’ll use the following `sales` table for our examples:

```sql
CREATE TABLE IF NOT EXISTS sales (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    volume INTEGER NOT NULL,
    date_created DATE NOT NULL
);
```

**Sample Data**:

| **id** | **customer_name** | **product_name** | **volume** | **date_created** |
| ------ | ----------------- | ---------------- | ---------- | ---------------- |
| 1      | Alice Johnson     | Laptop           | 1500       | 2024-06-01       |
| 2      | Bob Smith         | Wireless Mouse   | 200        | 2024-06-03       |
| 3      | Jane Doe          | Monitor          | 3000       | 2024-06-05       |
| 4      | Alice Johnson     | Laptop           | 1500       | 2024-06-07       |
| 5      | David Brown       | Headphones       | 2500       | 2024-06-10       |
| 6      | Bob Smith         | Monitor          | 3000       | 2024-06-11       |
| 7      | Grace Lee         | Keyboard         | 100        | 2024-06-12       |
| 8      | Jane Doe          | Wireless Mouse   | 200        | 2024-06-13       |

---

### ✅ **Examples of Using `DISTINCT`**

#### 1. **Retrieve Unique Customer Names**

Get a list of all unique customer names.

```sql
SELECT DISTINCT customer_name
FROM sales;
```

✅ **Result**:

| **customer_name** |
| ----------------- |
| Alice Johnson     |
| Bob Smith         |
| Jane Doe          |
| David Brown       |
| Grace Lee         |

---

#### 2. **Retrieve Unique Product Names**

Get a list of all unique product names.

```sql
SELECT DISTINCT product_name
FROM sales;
```

✅ **Result**:

| **product_name** |
| ---------------- |
| Laptop           |
| Wireless Mouse   |
| Monitor          |
| Headphones       |
| Keyboard         |

---

#### 3. **Retrieve Unique Combinations of Customer and Product**

Get unique combinations of `customer_name` and `product_name`.

```sql
SELECT DISTINCT customer_name, product_name
FROM sales;
```

✅ **Result**:

| **customer_name** | **product_name** |
| ----------------- | ---------------- |
| Alice Johnson     | Laptop           |
| Bob Smith         | Wireless Mouse   |
| Jane Doe          | Monitor          |
| David Brown       | Headphones       |
| Bob Smith         | Monitor          |
| Grace Lee         | Keyboard         |
| Jane Doe          | Wireless Mouse   |

---

### 🔄 **Using `DISTINCT` with `ORDER BY`**

You can use `DISTINCT` in combination with `ORDER BY` to sort the unique values.

#### 4. **Retrieve Unique Product Names in Alphabetical Order**

```sql
SELECT DISTINCT product_name
FROM sales
ORDER BY product_name ASC;
```

✅ **Result**:

| **product_name** |
| ---------------- |
| Headphones       |
| Keyboard         |
| Laptop           |
| Monitor          |
| Wireless Mouse   |

---

### ⚠️ **Things to Keep in Mind**

1. **Multiple Columns**:  
   When using `DISTINCT` with multiple columns, it returns unique combinations of those columns.

2. **Performance**:  
   Using `DISTINCT` on large datasets can impact performance, as the database needs to process and remove duplicates.

3. **`NULL` Values**:  
   `DISTINCT` considers `NULL` values as unique. If a column has `NULL` values, they will appear once in the results.

---

### 📝 **Practice Tasks**

1. **Unique Customers**:  
   Retrieve a list of all unique `customer_name` values.

2. **Unique Products**:  
   Retrieve a list of all unique `product_name` values.

3. **Unique Customer-Product Combinations**:  
   Retrieve unique combinations of `customer_name` and `product_name`.

4. **Unique Products Sorted**:  
   Retrieve unique product names sorted in descending order.

5. **Unique Volumes**:  
   Retrieve all unique `volume` values.

---

### 🌟 **Summary**

- The **`DISTINCT`** keyword filters out duplicate values and returns unique results.
- You can apply `DISTINCT` to single columns or combinations of multiple columns.
- Combine `DISTINCT` with `ORDER BY` for sorted unique results.
- `DISTINCT` considers `NULL` values as unique entries.

Now it’s time to practice retrieving distinct values in your queries! 🚀😊
