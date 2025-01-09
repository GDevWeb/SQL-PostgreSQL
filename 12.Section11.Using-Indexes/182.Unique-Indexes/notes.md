# Section 11 : Using indexes

## **Lesson 182: Unique Indexes**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28926792#overview)

---

#### **Key Concepts Covered**

1. **What is a Unique Index?**

   - Ensures all values in a column (or a combination of columns) are unique.
   - Automatically created for columns with `UNIQUE` or `PRIMARY KEY` constraints.

2. **When to Use Unique Indexes**:

   - To prevent duplicate entries in a table.
   - Commonly applied to:
     - Email addresses in a `users` table.
     - Product IDs in an inventory system.

3. **Syntax**:

   - Add a unique index to an existing column:
     ```sql
     CREATE UNIQUE INDEX idx_email ON members(Email);
     ```
   - Specify a unique constraint during table creation:
     ```sql
     CREATE TABLE users (
         UserID SERIAL PRIMARY KEY,
         Email VARCHAR(255) UNIQUE
     );
     ```

4. **Composite Unique Index**:
   - Ensures uniqueness across multiple columns.
   - Example: A combination of `first_name` and `last_name`:
     ```sql
     CREATE UNIQUE INDEX idx_full_name ON members(FirstName, LastName);
     ```

---

#### **Exercise: Working with Unique Indexes**

1. **Add a Unique Index to an Existing Table**:

   - Create a unique index on the `Email` column in the `members` table.

   ```sql
   CREATE UNIQUE INDEX idx_email ON members(Email);
   ```

2. **Test the Unique Index**:

   - Insert duplicate emails and observe the error.

   ```sql
   INSERT INTO members (FirstName, LastName, Email)
   VALUES ('John', 'Doe', 'john.doe@example.com'); -- First insert

   INSERT INTO members (FirstName, LastName, Email)
   VALUES ('Jane', 'Smith', 'john.doe@example.com'); -- Duplicate email
   ```

3. **Create a Composite Unique Index**:

   - Ensure that `FirstName` and `LastName` combinations are unique.

   ```sql
   CREATE UNIQUE INDEX idx_full_name ON members(FirstName, LastName);
   ```

4. **Test the Composite Index**:

   - Insert members with the same first and last names and check for errors.

   ```sql
   INSERT INTO members (FirstName, LastName, Email)
   VALUES ('John', 'Doe', 'unique.email@example.com'); -- Valid

   INSERT INTO members (FirstName, LastName, Email)
   VALUES ('John', 'Doe', 'another.email@example.com'); -- Error
   ```

---

### **Key Takeaways**

1. Unique indexes are essential for enforcing data integrity.
2. Composite unique indexes are powerful for multi-column uniqueness.
3. Always plan unique indexes carefully to avoid unnecessary restrictions.

---

Let me know when you’re ready for **Lesson 183: Working with Multi-Column Indexes (Composite Indexes)**! 🚀
