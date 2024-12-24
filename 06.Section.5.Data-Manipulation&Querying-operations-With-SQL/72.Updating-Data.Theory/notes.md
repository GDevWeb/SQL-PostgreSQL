# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 72: Updating Data — Theory** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28701334#overview)

---

### 🚀 **What is Data Updating?**

**Updating data** involves modifying existing records in a database table. In SQL, the `UPDATE` statement is used to change one or more fields of existing rows based on specified conditions. It's a fundamental part of **CRUD operations** (Create, Read, Update, Delete).

---

### 🛠️ **Basic Syntax of `UPDATE`**

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

- **`table_name`**: The name of the table containing the data you want to update.
- **`SET`**: Specifies the columns and their new values.
- **`WHERE`**: Specifies which rows to update. Without it, **all rows** in the table will be updated!

---

### ✅ **Examples**

#### 1. **Update a Single Column**

```sql
UPDATE books
SET Price = 19.99
WHERE Title = '1984';
```

This query updates the `Price` to `19.99` for the book titled `'1984'`.

#### 2. **Update Multiple Columns**

```sql
UPDATE books
SET Price = 24.99, Stock = 10
WHERE Title = 'The Hobbit';
```

This query updates both the `Price` and `Stock` for the book titled `'The Hobbit'`.

---

### ⚠️ **Important: The `WHERE` Clause**

- **Always use a `WHERE` clause** unless you want to update **all rows** in the table.
- Omitting `WHERE` can lead to unintended changes.

**Example of Updating All Rows (Be Careful!):**

```sql
UPDATE books
SET Price = 9.99;  -- This updates the price for ALL books!
```

---

### 🔍 **Common Use Cases for `UPDATE`**

1. **Correcting Errors in Data**:

   - Fixing typos or incorrect values.

2. **Applying Discounts**:

   - Reducing prices by a percentage.

3. **Restocking Inventory**:

   - Increasing stock levels for products.

4. **Updating Status**:
   - Changing the status of an order or user account.

---

### 🧮 **Updating with Expressions**

You can update values using expressions and calculations.

**Example: Apply a 10% Discount to All Fiction Books**

```sql
UPDATE books
SET Price = Price * 0.9
WHERE Genre = 'Fiction';
```

---

### 🛠️ **Using `RETURNING` (PostgreSQL Specific)**

In PostgreSQL, you can use the `RETURNING` clause to get feedback on the rows that were updated.

**Example:**

```sql
UPDATE books
SET Stock = Stock + 5
WHERE Genre = 'Fantasy'
RETURNING Title, Stock;
```

This query updates the stock and returns the titles and updated stock values.

---

### 📝 **Best Practices for `UPDATE`**

1. **Always Use `WHERE`**:

   - To avoid updating unintended rows.

2. **Test Before You Update**:

   - Run a `SELECT` query with the same `WHERE` clause to verify which rows will be updated.

3. **Backup Important Data**:

   - Before performing bulk updates, consider making a backup.

4. **Use Transactions for Safety**:
   - Wrap updates in transactions (`BEGIN`, `COMMIT`, `ROLLBACK`) for safer execution.

---

### ❌ **Common Mistakes**

1. **Forgetting the `WHERE` Clause**:

   ```sql
   UPDATE customers
   SET Email = 'test@example.com'; -- Updates ALL customers!
   ```

2. **Incorrect Data Type**:

   ```sql
   UPDATE books
   SET Price = 'Ten Dollars'; -- Error: Price expects a number
   ```

3. **Violating Constraints**:
   ```sql
   UPDATE books
   SET Stock = -5; -- Error: Violates CHECK constraint (Stock >= 0)
   ```

---

### 🌟 **Summary**

- The `UPDATE` statement modifies existing records.
- Always use the `WHERE` clause to target specific rows.
- You can update single or multiple columns and use expressions for dynamic updates.
- Use `RETURNING` in PostgreSQL to see the updated rows immediately.

---

Ready to practice? Try updating data in your own tables and see how it works! 🚀😊
