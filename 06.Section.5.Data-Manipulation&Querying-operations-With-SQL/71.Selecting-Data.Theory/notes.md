# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 71: Selecting Data — Theory** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28701318#overview)

---

### 🚀 **What is Data Selection?**

**Selecting data** is the process of retrieving information from one or more tables in a database. In SQL, this is achieved using the `SELECT` statement. Data selection allows you to view, filter, sort, and analyze data based on specific conditions.

---

### 🛠️ **Basic Syntax of `SELECT`**

The basic syntax of a `SELECT` statement is:

```sql
SELECT column1, column2, ...
FROM table_name;
```

- **`column1, column2, ...`**: The columns you want to retrieve.
- **`table_name`**: The table containing the data.

To retrieve **all columns**, you can use the wildcard `*`:

```sql
SELECT * FROM table_name;
```

---

### ✅ **Examples**

#### 1. **Select All Columns**

```sql
SELECT * FROM customers;
```

#### 2. **Select Specific Columns**

```sql
SELECT FirstName, LastName, Email FROM customers;
```

---

### 🔍 **Filtering Data with `WHERE`**

The `WHERE` clause allows you to filter rows based on conditions.

**Syntax**:

```sql
SELECT column1, column2
FROM table_name
WHERE condition;
```

**Example**:

```sql
SELECT * FROM books
WHERE Genre = 'Fiction';
```

---

### 🛠️ **Common Operators in `WHERE` Clause**

- **Equality**: `=`

  ```sql
  SELECT * FROM books WHERE Price = 19.99;
  ```

- **Inequality**: `<>` or `!=`

  ```sql
  SELECT * FROM books WHERE Stock <> 0;
  ```

- **Greater Than / Less Than**: `>`, `<`, `>=`, `<=`

  ```sql
  SELECT * FROM books WHERE Price > 20;
  ```

- **Pattern Matching**: `LIKE`

  ```sql
  SELECT * FROM customers WHERE Email LIKE '%@mail.com';
  ```

- **Range**: `BETWEEN`

  ```sql
  SELECT * FROM books WHERE Price BETWEEN 10 AND 30;
  ```

- **List**: `IN`

  ```sql
  SELECT * FROM books WHERE Genre IN ('Fiction', 'Fantasy');
  ```

- **Null Values**: `IS NULL` / `IS NOT NULL`
  ```sql
  SELECT * FROM books WHERE Stock IS NULL;
  ```

---

### 📊 **Sorting Results with `ORDER BY`**

You can sort the results using the `ORDER BY` clause.

**Syntax**:

```sql
SELECT column1, column2
FROM table_name
ORDER BY column1 [ASC | DESC];
```

- **`ASC`**: Ascending order (default).
- **`DESC`**: Descending order.

**Example**:

```sql
SELECT Title, Price FROM books
ORDER BY Price DESC;
```

---

### 🧩 **Limiting Results with `LIMIT`**

To restrict the number of rows returned, use the `LIMIT` clause.

**Syntax**:

```sql
SELECT * FROM table_name
LIMIT number;
```

**Example**:

```sql
SELECT * FROM books
LIMIT 3;
```

---

### 🔄 **Combining Clauses**

You can combine `SELECT`, `WHERE`, `ORDER BY`, and `LIMIT`:

```sql
SELECT Title, Author, Price
FROM books
WHERE Genre = 'Fiction'
ORDER BY Price DESC
LIMIT 5;
```

---

### 📝 **Key Points to Remember**

1. **Basic Selection**:

   - `SELECT * FROM table_name;` retrieves all columns.

2. **Filtering**:

   - Use `WHERE` to specify conditions.

3. **Sorting**:

   - Use `ORDER BY` to sort results by a column.

4. **Limiting Results**:

   - Use `LIMIT` to return a specific number of rows.

5. **Combine Clauses**:
   - You can combine `SELECT`, `WHERE`, `ORDER BY`, and `LIMIT` for more complex queries.

---

### 🌟 **Summary**

- The `SELECT` statement is essential for querying data.
- Filtering with `WHERE` helps you retrieve specific data.
- Sorting and limiting results make your queries more efficient and useful.

Ready to practice? Try writing some `SELECT` queries on your own tables! 🚀😊
