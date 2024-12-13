# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 69: What Are CRUD Operations?** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28701308#overview)

---

### 🚀 **CRUD Operations Overview**

**CRUD** stands for the **four basic operations** you can perform on data in a database:

1. **C**reate `INSERT INTO`
2. **R**ead `SELECT`
3. **U**pdate `UDPATE`
4. **D**elete `DELETE`

These operations are fundamental to interacting with any database and are essential skills for any developer or data professional.

---

### 🛠️ **Breakdown of CRUD Operations**

#### 1. **Create (`INSERT`)**

- **Purpose**: Add new records to a table.
- **SQL Command**: `INSERT INTO`

  **Example**:

  ```sql
  INSERT INTO books (Title, Author, Genre, Price, Stock)
  VALUES ('The Alchemist', 'Paulo Coelho', 'Fiction', 15.99, 10);
  ```

#### 2. **Read (`SELECT`)**

- **Purpose**: Retrieve data from one or more tables.
- **SQL Command**: `SELECT`

  **Example**:

  ```sql
  SELECT * FROM books;
  ```

  **With Filtering**:

  ```sql
  SELECT Title, Author FROM books WHERE Genre = 'Fiction';
  ```

#### 3. **Update (`UPDATE`)**

- **Purpose**: Modify existing records in a table.
- **SQL Command**: `UPDATE`

  **Example**:

  ```sql
  UPDATE books
  SET Price = 18.99
  WHERE Title = 'The Alchemist';
  ```

#### 4. **Delete (`DELETE`)**

- **Purpose**: Remove records from a table.
- **SQL Command**: `DELETE`

  **Example**:

  ```sql
  DELETE FROM books
  WHERE Title = 'The Alchemist';
  ```

---

### 🔄 **CRUD Cycle**

CRUD operations represent the full lifecycle of data in an application:

1. **Create**: Add new data.
2. **Read**: Retrieve and display data.
3. **Update**: Modify existing data.
4. **Delete**: Remove data when it's no longer needed.

---

### 💻 **Real-World Example**

Imagine an online bookstore:

- **Create**: A new book is added to the catalog.
- **Read**: A user views the list of available books.
- **Update**: The price of a book is updated.
- **Delete**: A book that’s out of print is removed from the catalog.

---

### 📝 **Key Points to Remember**

- **Always Use `WHERE` with `UPDATE` and `DELETE`**:  
  Without a `WHERE` clause, you might modify or delete all records unintentionally.

- **Practice Safe Data Handling**:
  - **Backup your data** before performing mass updates or deletions.
  - Use transactions (`BEGIN`, `COMMIT`, `ROLLBACK`) to manage changes safely.

---

### 🌟 **Summary**

CRUD operations are the backbone of database interactions. Mastering them will allow you to:

- Efficiently manage data.
- Develop robust applications.
- Handle real-world data tasks confidently.

---

Ready to dive deeper into each operation? Let’s get practicing! 😊🚀💻
