# Section 11 : Using indexes

## **Lesson 175: What Are Indexes? And Why Would You Need Them?**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28918826#overview)

---

#### **Key Concepts Covered**

1. **Definition of an Index**:

   - An index is a data structure that improves the speed of data retrieval.
   - It works like the index of a book: instead of scanning every page, you jump directly to the relevant section.

2. **How an Index Works**:

   - Without an index: The database scans every row (full table scan) to find the desired data.
   - With an index: The database uses the index to quickly locate the data.

3. **Benefits of Indexes**:

   - **Faster Queries**: Speeds up SELECT queries and WHERE clauses.
   - **Efficient Sorting**: Improves ORDER BY and GROUP BY operations.
   - **Enforcing Constraints**: Ensures unique values in columns with UNIQUE indexes.

4. **Drawbacks of Indexes**:
   - **Storage Overhead**: Indexes take up additional disk space.
   - **Maintenance Costs**: Indexes slow down INSERT, UPDATE, and DELETE operations because they must also update the index.

---

#### **Exercise**

1. **Create a Simple Table**:

   - Create a `products` table with columns `ProductID`, `ProductName`, and `Price`.

   ```sql
   CREATE TABLE products (
       ProductID SERIAL PRIMARY KEY,
       ProductName VARCHAR(100),
       Price DECIMAL(10, 2)
   );
   ```

2. **Insert Sample Data**:

   - Add at least 10 rows of data with varying product names and prices.

   ```sql
   INSERT INTO products (ProductName, Price) VALUES
   ('Laptop', 1200.00),
   ('Smartphone', 800.00),
   ('Tablet', 400.00),
   ('Monitor', 300.00),
   ('Keyboard', 50.00),
   ('Mouse', 25.00),
   ('Printer', 150.00),
   ('Headphones', 75.00),
   ('Speaker', 200.00),
   ('Webcam', 100.00);
   ```

3. **Query Without an Index**:

   - Run a query to retrieve products with prices greater than $500.
   - Use `EXPLAIN` to analyze the query performance.

   ```sql
   EXPLAIN SELECT * FROM products WHERE Price > 500;
   ```

4. **Add an Index**:

   - Create an index on the `Price` column.

   ```sql
   CREATE INDEX idx_price ON products(Price);
   ```

5. **Query With an Index**:

   - Re-run the same query and use `EXPLAIN` to observe the difference in performance.

   ```sql
   EXPLAIN SELECT * FROM products WHERE Price > 500;
   ```

---

### **Key Takeaways**

- Indexes significantly speed up data retrieval by reducing the need for full table scans.
- The trade-off is additional storage and maintenance overhead.

Let me know when you're ready to move to **Lesson 176: Don't Use Too Many Indexes!**
