# Section 11 : Using indexes

## **Lesson 177: Index Types: An Overview**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28926782#overview)
- [postgresql - documentation - indexes types](https://www.postgresql.org/docs/current/indexes-types.html)

---

### **Lesson 177: Index Types in PostgreSQL**

---

#### **Key Index Types in PostgreSQL**

1. **B-Tree Index** (Default):

   - The most commonly used index type.
   - Supports equality and range queries (`=`, `<`, `>`, `BETWEEN`).
   - Automatically created for primary keys and unique constraints.
   - **Example**:
     ```sql
     CREATE INDEX idx_price ON products(Price);
     ```

2. **Hash Index**:

   - Optimized for equality comparisons (`=`).
   - Not suitable for range queries.
   - Requires manual creation.
   - **Example**:
     ```sql
     CREATE INDEX idx_hash_email ON members USING hash(Email);
     ```

3. **GIN (Generalized Inverted Index)**:

   - Used for indexing full-text search, JSONB, and array data types.
   - Ideal for `@>`, `<@`, and text search queries.
   - **Example**:
     ```sql
     CREATE INDEX idx_full_text ON articles USING gin(to_tsvector('english', content));
     ```

4. **GiST (Generalized Search Tree)**:

   - Supports complex data types like geometric shapes.
   - Used for nearest neighbor searches and indexing ranges.
   - **Example**:
     ```sql
     CREATE INDEX idx_geospatial ON locations USING gist(geom);
     ```

5. **BRIN (Block Range Index)**:

   - Efficient for very large tables with sequentially stored data (e.g., time-series data).
   - Uses minimal space by indexing block ranges instead of rows.
   - **Example**:
     ```sql
     CREATE INDEX idx_brin_date ON bookings USING brin(BookingDate);
     ```

6. **SP-GiST (Space-Partitioned GiST)**:

   - Specialized for certain data types like quadtrees and k-d trees.
   - Ideal for spatial and hierarchical data.
   - **Example**:
     ```sql
     CREATE INDEX idx_spatial ON locations USING spgist(geom);
     ```

7. **Bloom Index**:
   - Used for indexing multiple columns with high cardinality.
   - Requires the `bloom` extension.
   - **Example**:
     ```sql
     CREATE EXTENSION IF NOT EXISTS bloom;
     CREATE INDEX idx_bloom ON products USING bloom (Category, Price);
     ```

---

#### **Exercise**

1. **Create and Test Different Index Types**:

   - Add data to test with various index types.

   ```sql
   CREATE TABLE products (
       ProductID SERIAL PRIMARY KEY,
       ProductName VARCHAR(100),
       Price DECIMAL(10, 2),
       Description TEXT
   );

   INSERT INTO products (ProductName, Price, Description)
   VALUES
   ('Laptop', 1200.00, 'High-performance laptop'),
   ('Smartphone', 800.00, 'Latest smartphone'),
   ('Tablet', 400.00, 'Affordable tablet');
   ```

2. **Test Each Index Type**:

   - Create and query using different index types.
   - Example: GIN Index for text search.

   ```sql
   CREATE INDEX idx_description ON products USING gin(to_tsvector('english', Description));

   SELECT * FROM products WHERE to_tsvector('english', Description) @@ to_tsquery('laptop');
   ```

---

### **Key Takeaways**

1. PostgreSQL offers a variety of index types tailored for specific use cases.
2. Default B-Tree indexes work for most scenarios, but specialized indexes (GIN, GiST, BRIN) excel for advanced data types.
3. Understanding the data and query patterns is crucial for selecting the right index type.

---

Let me know if you'd like further clarification or if you're ready for **Lesson 178: Setting Up Some Example Data**! 🚀
