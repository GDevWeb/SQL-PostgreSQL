# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 73: Deleting Data — Theory** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763088#overview)

---

### 🚀 **What is Deleting Data?**

**Deleting data** involves removing existing records (rows) from a database table. In SQL, this is achieved using the `DELETE` statement. Deleting data is a fundamental part of **CRUD operations** (Create, Read, Update, Delete).

---

### 🛠️ **Basic Syntax of `DELETE`**

```sql
DELETE FROM table_name
WHERE condition;
```

- **`table_name`**: The name of the table from which you want to delete records.
- **`WHERE condition`**: Specifies which rows to delete. **Without `WHERE`, all rows in the table will be deleted!**

---

### ✅ **Examples**

#### 1. **Delete a Specific Row**

```sql
DELETE FROM books
WHERE Title = '1984';
```

This query deletes the book titled `'1984'` from the `books` table.

#### 2. **Delete Rows Based on a Condition**

```sql
DELETE FROM customers
WHERE DateJoined < '2022-01-01';
```

This query deletes all customers who joined before January 1, 2022.

#### 3. **Delete All Rows (Be Careful!)**

```sql
DELETE FROM books;
```

This query **deletes all rows** in the `books` table. The table structure remains intact, but it will be empty.

---

### 🛑 **Important: The `WHERE` Clause**

- **Always use a `WHERE` clause** unless you intend to delete **all rows** in the table.
- Omitting the `WHERE` clause will remove **every record** in the table, which can lead to **data loss**.

---

### 🔄 **Truncate vs. Delete**

- **`DELETE`**:

  - Deletes rows based on a condition.
  - **Can be rolled back** if within a transaction.
  - Keeps the table structure and any associated constraints (e.g., auto-increment values).

- **`TRUNCATE`**:
  - Deletes **all rows** from a table.
  - **Cannot be rolled back** (in most databases).
  - Resets auto-increment values.
  - **Faster** than `DELETE` for large datasets.

**Example of `TRUNCATE`**:

```sql
TRUNCATE TABLE books;
```

---

### 🧩 **Common Use Cases for `DELETE`**

1. **Removing Inactive Records**:

   - Deleting users who haven't logged in for a long time.

2. **Cleaning Up Data**:

   - Removing temporary or test data.

3. **Handling Duplicates**:

   - Deleting duplicate entries to maintain data integrity.

4. **Archiving**:
   - Moving old records to an archive table and deleting them from the main table.

---

### 🔍 **Using `RETURNING` (PostgreSQL Specific)**

In PostgreSQL, you can use the `RETURNING` clause to see the rows that were deleted.

**Example**:

```sql
DELETE FROM books
WHERE Stock = 0
RETURNING *;
```

This query deletes all out-of-stock books and returns the deleted rows.

---

### 📝 **Best Practices for `DELETE`**

1. **Always Use `WHERE`**:

   - To avoid deleting all rows unintentionally.

2. **Test Before Deleting**:

   - Run a `SELECT` query with the same `WHERE` clause to see which rows will be deleted.

3. **Backup Data**:

   - Make a backup before performing deletions, especially for bulk operations.

4. **Use Transactions**:
   - Wrap deletions in transactions (`BEGIN`, `COMMIT`, `ROLLBACK`) for safer execution.

---

### ❌ **Common Mistakes**

1. **Forgetting the `WHERE` Clause**:

   ```sql
   DELETE FROM customers; -- Deletes ALL customers!
   ```

2. **Deleting Wrong Records**:

   ```sql
   DELETE FROM books
   WHERE Author = 'J.K. Rowling'; -- Be sure this is the intended condition!
   ```

3. **Violating Foreign Key Constraints**:

   - If there are foreign key relationships, deleting a row may fail unless you handle dependent records.

---

### 🌟 **Summary**

- The `DELETE` statement removes rows from a table.
- Always use a `WHERE` clause unless you intend to delete all rows.
- `DELETE` can be rolled back if used within a transaction.
- Use `TRUNCATE` for faster deletion of all rows without conditions.
- In PostgreSQL, `RETURNING` shows which rows were deleted.

---

Ready to practice? Try deleting specific rows from your tables and see how it works! 🚀😊
