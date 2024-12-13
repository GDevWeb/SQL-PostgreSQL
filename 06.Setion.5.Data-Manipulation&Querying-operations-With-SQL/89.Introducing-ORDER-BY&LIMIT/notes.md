# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 89: Introducing `ORDER BY` & `LIMIT`** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763154#overview)

---

### 🚀 **Goal of This Module**

In this module, you'll learn how to use the `ORDER BY` clause to sort query results and the `LIMIT` clause to restrict the number of rows returned. These tools are essential for organizing and managing large datasets effectively.

---

### 🛠️ **1. The `ORDER BY` Clause**

The `ORDER BY` clause sorts the rows returned by a query based on one or more columns.

**Syntax**:

```sql
SELECT column1, column2
FROM table_name
ORDER BY column1 [ASC | DESC];
```

- **`ASC`**: Ascending order (default).
- **`DESC`**: Descending order.

---

#### ✅ **Examples of `ORDER BY`**

Let’s use the following `sales` table for our examples:

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
| 4      | Emma Wilson       | Printer          | 750        | 2024-06-07       |
| 5      | David Brown       | Headphones       | 2500       | 2024-06-10       |

---

#### 1. **Sort by Volume (Ascending)**

```sql
SELECT * FROM sales
ORDER BY volume ASC;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** | **date_created** |
| ------ | ----------------- | ---------------- | ---------- | ---------------- |
| 2      | Bob Smith         | Wireless Mouse   | 200        | 2024-06-03       |
| 4      | Emma Wilson       | Printer          | 750        | 2024-06-07       |
| 1      | Alice Johnson     | Laptop           | 1500       | 2024-06-01       |
| 5      | David Brown       | Headphones       | 2500       | 2024-06-10       |
| 3      | Jane Doe          | Monitor          | 3000       | 2024-06-05       |

---

#### 2. **Sort by Date Created (Descending)**

```sql
SELECT * FROM sales
ORDER BY date_created DESC;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** | **date_created** |
| ------ | ----------------- | ---------------- | ---------- | ---------------- |
| 5      | David Brown       | Headphones       | 2500       | 2024-06-10       |
| 4      | Emma Wilson       | Printer          | 750        | 2024-06-07       |
| 3      | Jane Doe          | Monitor          | 3000       | 2024-06-05       |
| 2      | Bob Smith         | Wireless Mouse   | 200        | 2024-06-03       |
| 1      | Alice Johnson     | Laptop           | 1500       | 2024-06-01       |

---

### 🛠️ **2. The `LIMIT` Clause**

The `LIMIT` clause restricts the number of rows returned by a query.

**Syntax**:

```sql
SELECT column1, column2
FROM table_name
LIMIT number;
```

- **`number`**: The maximum number of rows to return.

---

#### ✅ **Examples of `LIMIT`**

#### 1. **Get the Top 3 Sales**

```sql
SELECT * FROM sales
ORDER BY volume DESC
LIMIT 3;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** | **date_created** |
| ------ | ----------------- | ---------------- | ---------- | ---------------- |
| 3      | Jane Doe          | Monitor          | 3000       | 2024-06-05       |
| 5      | David Brown       | Headphones       | 2500       | 2024-06-10       |
| 1      | Alice Johnson     | Laptop           | 1500       | 2024-06-01       |

---

### 🔄 **Combining `ORDER BY` and `LIMIT`**

You can use `ORDER BY` and `LIMIT` together to get sorted subsets of data.

#### Example: **Get the 2 Most Recent Sales**

```sql
SELECT * FROM sales
ORDER BY date_created DESC
LIMIT 2;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** | **date_created** |
| ------ | ----------------- | ---------------- | ---------- | ---------------- |
| 5      | David Brown       | Headphones       | 2500       | 2024-06-10       |
| 4      | Emma Wilson       | Printer          | 750        | 2024-06-07       |

---

### 📋 **Practical Scenarios**

1. **Get the Top 5 Highest-Paid Employees**

   ```sql
   SELECT * FROM employees
   ORDER BY salary DESC
   LIMIT 5;
   ```

2. **Find the 3 Most Recently Created Orders**

   ```sql
   SELECT * FROM orders
   ORDER BY date_created DESC
   LIMIT 3;
   ```

3. **List the 10 Cheapest Products**
   ```sql
   SELECT * FROM products
   ORDER BY price ASC
   LIMIT 10;
   ```

---

### 📝 **Practice Tasks**

1. **Get Top 3 High-Volume Sales**:  
   Retrieve the top 3 sales with the highest `volume`.

2. **Get the 5 Most Recent Customers**:  
   Retrieve the 5 most recently added customers sorted by `date_created`.

3. **Get the 2 Least Expensive Products**:  
   Retrieve the 2 products with the lowest prices.

4. **List the First 4 Orders Sorted by Customer Name**:  
   Retrieve the first 4 orders sorted alphabetically by `customer_name`.

---

### 🌟 **Summary**

- **`ORDER BY`** sorts query results in ascending (`ASC`) or descending (`DESC`) order.
- **`LIMIT`** restricts the number of rows returned by a query.
- Combining `ORDER BY` and `LIMIT` helps you get sorted subsets of data quickly.

Now it’s time to practice sorting and limiting your query results! 🚀😊
