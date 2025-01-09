# Section 11 : Using indexes

## **Lesson 180: Creating & Using Single-Column Indexes**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28949200#overview)

---

#### **Key Concepts Covered**

1. **What are Single-Column Indexes?**

   - An index created on a single column to speed up queries that filter, sort, or join using that column.

2. **When to Use Single-Column Indexes**:

   - When queries frequently filter or search based on one specific column.
   - Example:
     ```sql
     SELECT * FROM products WHERE Price > 500;
     ```

3. **Advantages**:

   - Improves query performance for operations involving the indexed column.
   - Efficient for equality and range searches.

4. **Drawbacks**:
   - Adds overhead for INSERT, UPDATE, and DELETE operations.
   - Consumes additional disk space.

---

#### **Exercise: Working with Single-Column Indexes**

1. **Create a Single-Column Index**:

   - Add an index to the `Category` column in the `products` table.

   ```sql
   CREATE INDEX idx_category ON products(Category);
   ```

2. **Query Without the Index**:

   - Run a query to filter products by category and observe the query plan.

   ```sql
   EXPLAIN ANALYZE SELECT * FROM products WHERE Category = 'Electronics';
   ```

3. **Query With the Index**:

   - After creating the index, re-run the query and compare the execution plan.

   ```sql
   EXPLAIN ANALYZE SELECT * FROM products WHERE Category = 'Electronics';
   ```

4. **Experiment with Range Queries**:

   - Test the index’s effect on range queries by filtering products by price.

   ```sql
   CREATE INDEX idx_price ON products(Price);
   EXPLAIN ANALYZE SELECT * FROM products WHERE Price BETWEEN 100 AND 500;
   ```

---

### **Key Takeaways**

1. Single-column indexes are simple yet powerful tools for improving query performance.
2. Analyze query patterns to identify which columns would benefit from indexing.
3. Regularly monitor and evaluate index usage to ensure effectiveness.

---

Let me know if you're ready to move to **Lesson 181: More on Creating & Dropping Indexes**! 🚀
