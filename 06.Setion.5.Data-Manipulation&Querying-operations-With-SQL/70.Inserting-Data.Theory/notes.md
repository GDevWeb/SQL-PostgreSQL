# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 70: Inserting Data — Theory** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28701312#overview)

---

### 🚀 **What is Data Insertion?**

**Inserting data** is the process of adding new records (rows) into a database table. In SQL, this is done using the `INSERT` statement. Understanding how to insert data correctly is fundamental to maintaining and populating your database.

---

### 🛠️ **Basic Syntax of `INSERT`**

The basic syntax for inserting data into a table is:

```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```

- **`table_name`**: The name of the table where you want to insert data.
- **`column1, column2, ...`**: The columns where data will be inserted.
- **`value1, value2, ...`**: The values corresponding to each column.

---

### ✅ **Examples**

#### 1. **Inserting Data into All Columns**

If you are inserting data into **all columns** of a table, you can omit the column names (not recommended for clarity and future changes):

```sql
INSERT INTO customers
VALUES (1, 'Emma', 'Clarkson', 'emma.clarkson@mail.com', '2022-05-15');
```

#### 2. **Inserting Data into Specific Columns**

If you're inserting data into **specific columns**, you must list the columns explicitly:

```sql
INSERT INTO customers (FirstName, LastName, Email)
VALUES ('Nathan', 'Rivera', 'nathan.rivera@domain.com');
```

#### 3. **Inserting Multiple Rows**

You can insert **multiple rows** in a single `INSERT` statement:

```sql
INSERT INTO books (Title, Author, Genre, Price, Stock)
VALUES
  ('1984', 'George Orwell', 'Fiction', 29.99, 4),
  ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 29.99, 6),
  ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 24.99, 1);
```

---

### 🛑 **Important Considerations**

1. **Matching Data Types**:

   - Ensure the values match the **data types** defined for each column (e.g., `VARCHAR`, `INT`, `DECIMAL`).

2. **`NOT NULL` Constraints**:

   - If a column has a `NOT NULL` constraint, you must provide a value for it.

3. **Default Values**:

   - If a column has a **default value**, you can omit it from the `INSERT` statement, and the default will be used:
     ```sql
     INSERT INTO customers (FirstName, LastName, Email)
     VALUES ('Sophia', 'Patel', 'sophia.patel@email.net');
     ```

4. **Auto-Increment Columns**:

   - For columns with **auto-increment** (e.g., `SERIAL` in PostgreSQL), you don't need to provide a value; the database will automatically generate it:
     ```sql
     INSERT INTO customers (FirstName, LastName, Email)
     VALUES ('Lucas', 'Miller', 'lucas.miller@mail.com');
     ```

5. **Handling Duplicates**:
   - In PostgreSQL, you can handle duplicate data with the `ON CONFLICT` clause:
     ```sql
     INSERT INTO customers (Email, FirstName, LastName)
     VALUES ('emma.clarkson@mail.com', 'Emma', 'Clarkson')
     ON CONFLICT (Email) DO NOTHING;
     ```

---

### 📝 **Common Errors**

1. **Missing Values**:

   ```sql
   INSERT INTO customers (FirstName, LastName)
   VALUES ('John'); -- Error: Missing value for LastName
   ```

2. **Data Type Mismatch**:

   ```sql
   INSERT INTO books (Title, Price)
   VALUES ('New Book', 'Twenty Dollars'); -- Error: Price must be a number
   ```

3. **Violating Constraints**:
   ```sql
   INSERT INTO books (Title, Price, Stock)
   VALUES ('Invalid Book', -5.99, -1); -- Error: CHECK constraint violation
   ```

---

### 🌟 **Summary**

- **Inserting data** adds new records to a table.
- Use `INSERT INTO` with the appropriate columns and values.
- Pay attention to constraints like `NOT NULL`, `UNIQUE`, and data types.
- You can insert multiple rows in one statement.
- Handle duplicates using `ON CONFLICT` (PostgreSQL).

---

Ready to practice? Let’s try inserting data into your tables and see how it works! 🚀😊
