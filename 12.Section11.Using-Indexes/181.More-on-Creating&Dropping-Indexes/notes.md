# Section 11 : Using indexes

## **Lesson 181: More on Creating & Dropping Indexes**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28926790#overview)

---

#### **Key Concepts Covered**

1. **Creating Indexes When Adding Tables**:

   - Some database systems (e.g., MySQL) allow you to define indexes directly in the `CREATE TABLE` statement:
     ```sql
     CREATE TABLE products (
         ProductID SERIAL PRIMARY KEY,
         ProductName VARCHAR(100),
         Category VARCHAR(50),
         Price DECIMAL(10, 2),
         INDEX idx_category (Category)
     );
     ```
   - **PostgreSQL Limitation**:
     - In PostgreSQL, indexes must be created separately using the `CREATE INDEX` command after the table is created.

2. **Dropping Indexes**:

   - If an index is no longer needed or is negatively impacting performance, you can remove it using:
     ```sql
     DROP INDEX <index_name>;
     ```
   - Example:
     ```sql
     DROP INDEX idx_category;
     ```

3. **Best Practices**:

   - Only drop indexes if:
     - They are redundant.
     - They are not being used (e.g., verified via `pg_stat_user_indexes` in PostgreSQL).
     - They slow down write operations without significant performance gains.

4. **Database-Specific Features**:
   - Always consult the documentation for your specific database system to understand supported features and syntax:
     - **MySQL**: Allows index creation during table creation.
     - **PostgreSQL**: Requires separate `CREATE INDEX` statements.

---

#### **Exercise: Practice Creating and Dropping Indexes**

1. **Add a New Index**:

   - Create an index on the `Description` column in the `products` table for full-text search.

   ```sql
   CREATE INDEX idx_description ON products USING gin(to_tsvector('english', Description));
   ```

2. **Query Using the New Index**:

   - Perform a text search query and analyze performance.

   ```sql
   SELECT * FROM products WHERE to_tsvector('english', Description) @@ to_tsquery('laptop');
   ```

3. **Drop the Index**:

   - Remove the index when it is no longer needed.

   ```sql
   DROP INDEX idx_description;
   ```

---

### **Key Takeaways**

1. **Index Creation Timing**:
   - PostgreSQL requires indexes to be created separately, while MySQL allows them during table creation.
2. **Index Maintenance**:
   - Regularly monitor index usage and drop redundant or unused indexes to optimize performance.
3. **Documentation Matters**:
   - Always refer to your database system’s documentation to understand the capabilities and limitations.

---

Let me know if you’re ready for **Lesson 182: Unique Indexes**! 🚀
