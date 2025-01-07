# Section 11 : Using indexes

## **Lesson 176: Don't Use Too Many Indexes!**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28926778#overview)

---

### **Key Concepts Covered**

1. **The Trade-Off of Indexes**:

   - While indexes improve query performance, excessive or unnecessary indexes can lead to problems:
     - **Increased Storage Requirements**: Indexes require disk space, which can grow significantly with large datasets.
     - **Slower Write Operations**: INSERT, UPDATE, and DELETE statements become slower because the database needs to update the indexes.
     - **Complexity in Maintenance**: Managing too many indexes can make optimization harder.

2. **When to Create Indexes**:

   - Use indexes for columns that are:
     - Frequently queried with WHERE clauses.
     - Used in JOIN conditions.
     - Often sorted or grouped (ORDER BY, GROUP BY).
   - Avoid indexing columns that:
     - Have low cardinality (e.g., columns with few distinct values like `true/false`).
     - Are rarely used in queries.

3. **Best Practices**:
   - **Index Only When Necessary**: Add indexes where performance improvements are measurable.
   - **Monitor Index Usage**: Use tools like `pg_stat_user_indexes` in PostgreSQL to check index performance.
   - **Periodically Reevaluate**: Remove unused or redundant indexes.

---

#### **Exercise**

1. **Analyze an Indexed Table**:

   - Add a `Category` column to the `products` table and populate it with values like `Electronics`, `Accessories`, etc.

   ```sql
   ALTER TABLE products ADD COLUMN Category VARCHAR(50);
   UPDATE products
   SET Category = CASE
       WHEN ProductName IN ('Laptop', 'Smartphone', 'Tablet') THEN 'Electronics'
       WHEN ProductName IN ('Keyboard', 'Mouse', 'Printer') THEN 'Accessories'
       ELSE 'Others'
   END;
   ```

2. **Query Without an Index**:

   - Run a query to filter products by category.

   ```sql
   EXPLAIN SELECT * FROM products WHERE Category = 'Electronics';
   ```

3. **Create an Index**:

   - Create an index on the `Category` column.

   ```sql
   CREATE INDEX idx_category ON products(Category);
   ```

4. **Analyze the Query with the Index**:

   - Re-run the same query and compare performance.

   ```sql
   EXPLAIN SELECT * FROM products WHERE Category = 'Electronics';
   ```

5. **Monitor Index Impact**:

   - Simulate frequent updates to the `Category` column and observe the performance impact.

   ```sql
   UPDATE products SET Category = 'Updated Category' WHERE ProductID <= 5;
   ```

---

### **Key Takeaways**

1. Indexes are a powerful tool but should be used judiciously to avoid unnecessary overhead.
2. Focus on indexing columns with high cardinality and frequent usage in queries.
3. Periodically analyze your indexes to ensure they are still beneficial.

Let me know when you're ready for **Lesson 177: Index Types: An Overview**! 🚀
