# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 93: Module Summary** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763166#overview)

---

### 🚀 **What You’ve Learned in This Module**

In this module, you explored key concepts for querying and manipulating data using SQL. You covered techniques that improve your ability to filter, sort, and organize data efficiently. Let’s review the major topics you mastered!

---

## 📝 **Key Concepts Recap**

### 1. **Filtering Data with `WHERE`**

- **Basic Filtering**:  
  Use the `WHERE` clause to filter rows based on conditions.

  ```sql
  SELECT * FROM sales
  WHERE volume > 1000;
  ```

- **Comparison Operators**:

  - `=`, `<>` (or `!=`), `>`, `<`, `>=`, `<=`
  - Example: `WHERE salary >= 50000`

- **Logical Operators**:  
  Combine conditions with `AND`, `OR`, and `NOT`.
  ```sql
  SELECT * FROM sales
  WHERE volume > 1000 AND is_recurring = TRUE;
  ```

---

### 2. **Using `LIKE` and `ILIKE` for Pattern Matching**

- **Pattern Matching** with Wildcards:

  - `%` matches any sequence of characters.
  - `_` matches a single character.

  ```sql
  SELECT * FROM sales
  WHERE customer_name LIKE 'A%';
  ```

- **Case-Insensitive Matching** (PostgreSQL):
  ```sql
  SELECT * FROM sales
  WHERE customer_name ILIKE '%john%';
  ```

---

### 3. **Working with Dates and Date Differences**

- **Date Subtraction**:  
  Calculate the difference between dates.

  ```sql
  SELECT date_fulfilled - date_created AS days_to_fulfill
  FROM sales;
  ```

- **Date Functions**:  
  Use `CURRENT_DATE` and `INTERVAL` for date calculations.
  ```sql
  SELECT * FROM sales
  WHERE date_created >= CURRENT_DATE - INTERVAL '7 days';
  ```

---

### 4. **Ordering and Limiting Results**

- **`ORDER BY`**:  
  Sort query results in ascending (`ASC`) or descending (`DESC`) order.

  ```sql
  SELECT * FROM sales
  ORDER BY volume DESC;
  ```

- **`LIMIT`**:  
  Restrict the number of rows returned.

  ```sql
  SELECT * FROM sales
  ORDER BY date_created DESC
  LIMIT 5;
  ```

- **Combining `ORDER BY` and `LIMIT`**:
  ```sql
  SELECT * FROM sales
  ORDER BY volume ASC
  LIMIT 3;
  ```

---

### 5. **Retrieving Unique Values with `DISTINCT`**

- **`DISTINCT`**: Retrieve unique values and remove duplicates.

  ```sql
  SELECT DISTINCT product_name FROM sales;
  ```

- **Multiple Columns with `DISTINCT`**:
  ```sql
  SELECT DISTINCT customer_name, product_name FROM sales;
  ```

---

### 6. **Subqueries**

- **Single-Row Subquery**:

  ```sql
  SELECT * FROM sales
  WHERE volume > (SELECT AVG(volume) FROM sales);
  ```

- **Multiple-Row Subquery**:

  ```sql
  SELECT * FROM sales
  WHERE product_name IN (SELECT product_name FROM sales WHERE customer_name = 'Alice Johnson');
  ```

- **Correlated Subquery**:
  ```sql
  SELECT * FROM sales s1
  WHERE volume > (SELECT AVG(volume) FROM sales s2 WHERE s1.product_name = s2.product_name);
  ```

---

### 7. **Views**

- **Creating Views**:

  ```sql
  CREATE VIEW high_volume_sales AS
  SELECT * FROM sales
  WHERE volume > 1000;
  ```

- **Querying a View**:

  ```sql
  SELECT * FROM high_volume_sales;
  ```

- **Updating a View**:

  ```sql
  CREATE OR REPLACE VIEW high_volume_sales AS
  SELECT customer_name, product_name, volume FROM sales WHERE volume > 1500;
  ```

- **Dropping a View**:
  ```sql
  DROP VIEW high_volume_sales;
  ```

---

## 🔄 **Key Takeaways**

1. **Efficient Filtering**:  
   Use `WHERE` with comparison and logical operators to precisely filter your data.

2. **Pattern Matching**:  
   Apply `LIKE` and `ILIKE` for flexible text searches.

3. **Date Operations**:  
   Perform date calculations to analyze timelines and intervals.

4. **Ordering and Limiting**:  
   Use `ORDER BY` and `LIMIT` to organize and narrow down large result sets.

5. **Unique Values**:  
   Apply `DISTINCT` to eliminate duplicates and retrieve unique entries.

6. **Subqueries**:  
   Nest queries for more dynamic and flexible data retrieval.

7. **Views**:  
   Simplify complex queries and improve data security with views.

---

### 📝 **Practice Tasks**

1. **Filter and Sort**:  
   Retrieve the top 5 sales with the highest `volume` made in the last 30 days.

2. **Subquery**:  
   Find sales where the `volume` is above the average volume.

3. **View Creation**:  
   Create a view for all disputed sales and query it.

4. **Distinct Values**:  
   Get a list of unique products sold by each customer.

---

### 🌟 **Next Steps**

- Continue practicing these concepts with real-world datasets.
- Explore more complex queries and combinations of subqueries, views, and filtering.
- Experiment with creating views to simplify repetitive queries.

By mastering these techniques, you'll be well-equipped to handle complex data operations in SQL. 🚀😊
