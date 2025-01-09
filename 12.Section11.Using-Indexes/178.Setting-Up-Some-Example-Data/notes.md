# Section 11 : Using indexes

## **Lesson 178: Setting Up Some Example Data**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28926786#overview)
- [github repo - starting setup](https://github.com/academind/sql-complete-guide-code/blob/11-using-indexes/sql/01-starting-setup.sql)

---

#### **Key Concepts**

This lesson involves preparing a sample dataset to practice applying different types of indexes and analyzing query performance. The focus is on understanding how indexes interact with real-world data.

---

#### **Exercise: Creating Example Data**

1. **Create the `products` Table**

   - Include columns like `ProductID`, `ProductName`, `Category`, `Price`, and `Description`.

   ```sql
   CREATE TABLE products (
       ProductID SERIAL PRIMARY KEY,
       ProductName VARCHAR(100) NOT NULL,
       Category VARCHAR(50) NOT NULL,
       Price DECIMAL(10, 2) CHECK (Price > 0),
       Description TEXT
   );
   ```

2. **Insert Sample Data**

   - Populate the table with data representing various products.

   ```sql
   INSERT INTO products (ProductName, Category, Price, Description)
   VALUES
   ('Laptop', 'Electronics', 1200.00, 'High-performance laptop'),
   ('Smartphone', 'Electronics', 800.00, 'Latest smartphone model'),
   ('Tablet', 'Electronics', 400.00, 'Affordable tablet for everyday use'),
   ('Keyboard', 'Accessories', 50.00, 'Ergonomic mechanical keyboard'),
   ('Mouse', 'Accessories', 25.00, 'Wireless optical mouse'),
   ('Monitor', 'Electronics', 300.00, '27-inch HD monitor'),
   ('Speaker', 'Accessories', 150.00, 'Bluetooth speaker with deep bass'),
   ('Webcam', 'Accessories', 100.00, '1080p HD webcam for video conferencing'),
   ('Printer', 'Office', 200.00, 'All-in-one laser printer'),
   ('Desk', 'Furniture', 400.00, 'Adjustable standing desk');
   ```

3. **Query the Data**

   - Verify the data was inserted correctly.

   ```sql
   SELECT * FROM products;
   ```

4. **Prepare for Indexing**
   - The data is now ready for applying different index types to test their performance.

---

### **Key Takeaways**

- A well-designed dataset allows meaningful testing of indexes and query optimizations.
- Organize data to simulate real-world usage (e.g., different categories and varying prices).

---

Let me know when you’re ready to move on to **Lesson 179: EXPLAINing Queries & Query Planning**! 🚀
