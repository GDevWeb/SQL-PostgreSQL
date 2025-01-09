# Section 11 : Using indexes

### **Lesson 179: EXPLAINing Queries & Query Planning**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28949202#overview)
- [mysql - documentation - Optimizing Queries with EXPLAIN](https://dev.mysql.com/doc/refman/5.7/en/using-explain.html)
- [postgresql - documentation - Optimizing Queries with EXPLAIN](https://www.postgresql.org/docs/current/sql-explain.html)

---

#### **Key Concepts Covered**

1. **Purpose of EXPLAIN**:

   - The `EXPLAIN` command provides insights into how the database plans to execute a query.
   - Helps identify performance bottlenecks and optimize query execution.

2. **Understanding the Output**:

   - **Seq Scan** (Sequential Scan): Scans the entire table.
   - **Index Scan**: Uses an index to find matching rows.
   - **Filter**: Conditions applied to rows to retrieve the result.
   - **Cost**: Estimated cost of executing the query, with:
     - **Startup Cost**: Time to begin returning rows.
     - **Total Cost**: Time to process all rows.
   - **Rows**: Estimated number of rows processed.

3. **Using EXPLAIN ANALYZE**:
   - Combines `EXPLAIN` with actual query execution.
   - Provides real execution times and row counts.

---

#### **Exercise: Query Planning**

1. **Run a Basic Query**:

   - Retrieve all products priced above $500 and explain the query plan.

   ```sql
   EXPLAIN SELECT * FROM products WHERE Price > 500;
   ```

2. **Create an Index**:

   - Add an index on the `Price` column.

   ```sql
   CREATE INDEX idx_price ON products(Price);
   ```

3. **Re-run the Query**:

   - Observe the difference in query execution.

   ```sql
   EXPLAIN SELECT * FROM products WHERE Price > 500;
   ```

4. **Use EXPLAIN ANALYZE**:

   - Check the actual performance.

   ```sql
   EXPLAIN ANALYZE SELECT * FROM products WHERE Price > 500;
   ```

5. **Complex Query with Index**:

   - Create a composite index for `Category` and `Price`.

   ```sql
   CREATE INDEX idx_category_price ON products(Category, Price);
   ```

   - Query for products in the `Electronics` category priced above $500.

   ```sql
   EXPLAIN ANALYZE SELECT * FROM products WHERE Category = 'Electronics' AND Price > 500;
   ```

---

### **Key Takeaways**

1. Use `EXPLAIN` and `EXPLAIN ANALYZE` to identify performance issues in queries.
2. Indexes reduce query costs and improve execution times.
3. Composite indexes are beneficial for multi-column filtering.

---

Let me know when you're ready for **Lesson 180: Creating & Using Single-Column Indexes**! 🚀
