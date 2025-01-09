# Section 11 : Using indexes

## **Lesson 183: Working with Multi-Column Indexes (Composite Indexes)**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28926794#overview)

---

#### **Key Concepts Covered**

1. **What is a Composite Index?**

   - An index that includes multiple columns.
   - Used for queries that involve filtering, sorting, or joining on multiple columns.

2. **When to Use Composite Indexes**:

   - When queries frequently use multiple columns in `WHERE`, `ORDER BY`, or `JOIN` clauses.
   - Example query:
     ```sql
     SELECT * FROM orders WHERE CustomerID = 1 AND OrderDate > '2024-01-01';
     ```

3. **Composite Index Syntax**:

   - Create a composite index:
     ```sql
     CREATE INDEX idx_customer_date ON orders(CustomerID, OrderDate);
     ```
   - The order of columns in the index matters:
     - The first column should be used in all queries that rely on the index.

4. **Advantages of Composite Indexes**:

   - Improves performance for multi-column queries.
   - Reduces the need for multiple single-column indexes.

5. **Limitations**:
   - If a query does not use the first column of the composite index, the index may not be used.

---

#### **Exercise: Creating and Using Composite Indexes**

1. **Create a Composite Index**:

   - Add an index to the `orders` table on `CustomerID` and `OrderDate`.

   ```sql
   CREATE INDEX idx_customer_orderdate ON orders(CustomerID, OrderDate);
   ```

2. **Test the Composite Index**:

   - Run a query and analyze its performance with `EXPLAIN`.

   ```sql
   EXPLAIN ANALYZE SELECT * FROM orders WHERE CustomerID = 1 AND OrderDate > '2024-01-01';
   ```

3. **Test Queries Without the First Column**:

   - Run a query that uses only `OrderDate` and observe the index's behavior.

   ```sql
   EXPLAIN ANALYZE SELECT * FROM orders WHERE OrderDate > '2024-01-01';
   ```

4. **Optimize Column Order**:

   - Recreate the index with `OrderDate` first and test its impact.

   ```sql
   DROP INDEX idx_customer_orderdate;
   CREATE INDEX idx_orderdate_customer ON orders(OrderDate, CustomerID);

   EXPLAIN ANALYZE SELECT * FROM orders WHERE OrderDate > '2024-01-01';
   ```

---

### **Key Takeaways**

1. Composite indexes are useful for queries involving multiple columns.
2. The order of columns in a composite index impacts its effectiveness.
3. Analyze query patterns before creating composite indexes to ensure optimal performance.

---

Let me know if you’re ready for **Lesson 184: Partial Indexes**! 🚀
