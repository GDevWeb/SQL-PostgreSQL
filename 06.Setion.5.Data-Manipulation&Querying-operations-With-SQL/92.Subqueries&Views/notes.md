# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 92: Subqueries & Views** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763166#overview)

---

### 🚀 **Goal of This Module**

In this module, you'll learn about **subqueries** and **views** in SQL. These concepts allow you to write more advanced queries and improve code organization, readability, and efficiency.

---

## 🛠️ **1. Subqueries**

A **subquery** is a query nested inside another query. It is used to perform intermediate calculations or filtering that helps in obtaining the final results.

**Types of Subqueries**:

1. **Single-Row Subqueries**: Return a single value.
2. **Multiple-Row Subqueries**: Return multiple values.
3. **Correlated Subqueries**: Reference columns from the outer query.

---

### ✅ **Subquery Examples**

#### 1. **Single-Row Subquery**

Find sales with a `volume` greater than the average volume.

```sql
SELECT *
FROM sales
WHERE volume > (SELECT AVG(volume) FROM sales);
```

✅ **Explanation**:

- The subquery `(SELECT AVG(volume) FROM sales)` calculates the average volume.
- The outer query retrieves sales where the `volume` is greater than this average.

---

#### 2. **Multiple-Row Subquery**

Find all sales where the `product_name` matches any product sold by **"Alice Johnson"**.

```sql
SELECT *
FROM sales
WHERE product_name IN (
    SELECT product_name
    FROM sales
    WHERE customer_name = 'Alice Johnson'
);
```

✅ **Explanation**:

- The subquery retrieves all `product_name` values sold by **"Alice Johnson"**.
- The outer query returns all sales that match any of these product names.

---

#### 3. **Correlated Subquery**

Find sales where the `volume` is greater than the average `volume` of sales for the same product.

```sql
SELECT *
FROM sales s1
WHERE volume > (
    SELECT AVG(volume)
    FROM sales s2
    WHERE s1.product_name = s2.product_name
);
```

✅ **Explanation**:

- The subquery calculates the average volume for each product.
- The outer query returns sales where the `volume` is greater than the product's average volume.

---

## 📊 **2. Views**

A **view** is a virtual table based on the result of a query. It doesn't store data itself but provides a way to simplify complex queries, improve readability, and enhance security by limiting data access.

**Syntax for Creating a View**:

```sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

---

### ✅ **View Examples**

#### 1. **Create a View for High-Volume Sales**

Create a view to display sales with a `volume` greater than **1000**.

```sql
CREATE VIEW high_volume_sales AS
SELECT id, customer_name, product_name, volume, date_created
FROM sales
WHERE volume > 1000;
```

#### 2. **Query the View**

You can query the view just like a table.

```sql
SELECT * FROM high_volume_sales;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** | **date_created** |
| ------ | ----------------- | ---------------- | ---------- | ---------------- |
| 1      | Alice Johnson     | Laptop           | 1500       | 2024-06-01       |
| 3      | Jane Doe          | Monitor          | 3000       | 2024-06-05       |
| 5      | David Brown       | Headphones       | 2500       | 2024-06-10       |

---

#### 3. **Update a View**

You can modify an existing view using `CREATE OR REPLACE VIEW`.

```sql
CREATE OR REPLACE VIEW high_volume_sales AS
SELECT id, customer_name, product_name, volume, date_created, is_recurring
FROM sales
WHERE volume > 1000;
```

---

#### 4. **Drop a View**

To delete a view:

```sql
DROP VIEW high_volume_sales;
```

---

### 📝 **Practical Scenarios**

1. **Use Subqueries for Dynamic Filtering**:

   - Find customers who have purchased the most expensive product.

2. **Create Views for Reporting**:

   - Create a view for **weekly sales reports** showing `customer_name`, `product_name`, and `volume`.

3. **Simplify Complex Queries**:
   - Use a view to simplify a multi-join query and retrieve relevant data easily.

---

### 🧩 **Practice Tasks**

1. **Subquery Practice**:

   - Write a query to find all sales where the `volume` exceeds the average volume for the same `product_name`.

2. **Multiple-Row Subquery**:

   - Retrieve sales for customers who have bought **“Laptop”**.

3. **Create a View**:

   - Create a view called `recent_sales` that includes sales made in the last **7 days**.

4. **Query a View**:

   - Select all data from the `recent_sales` view.

5. **Drop a View**:
   - Drop the `recent_sales` view.

---

### 🌟 **Summary**

- **Subqueries**:

  - Useful for filtering, calculations, and dynamic comparisons within queries.
  - Can be single-row, multiple-row, or correlated.

- **Views**:
  - Virtual tables that simplify complex queries and enhance readability.
  - Created with `CREATE VIEW` and deleted with `DROP VIEW`.

By mastering subqueries and views, you'll be able to write more powerful, efficient, and organized SQL queries. 🚀😊
