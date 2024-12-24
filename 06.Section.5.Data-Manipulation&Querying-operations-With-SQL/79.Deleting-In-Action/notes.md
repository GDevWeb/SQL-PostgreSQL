# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

### 📚 **Module 79: Deleting In Action** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763120#overview)

---

### 🚀 **Goal of This Module**

In this module, we'll practice deleting data from the `sales` table. We'll explore different deletion scenarios to demonstrate how to remove specific rows based on various conditions. This hands-on practice will deepen your understanding of the `DELETE` statement in SQL.

---

### 📝 **Recap of the Sales Table Structure**

Here's a quick reminder of the `sales` table we’ve been working with:

```sql
CREATE TABLE IF NOT EXISTS sales (
    id SERIAL PRIMARY KEY,
    date_created DATE NOT NULL,
    date_fulfilled DATE,
    customer_name VARCHAR(100) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    volume INTEGER CHECK (volume >= 0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
);
```

---

### 🛠️ **Examples of Deletions**

#### 1. **Delete a Specific Sale**

Let's delete a sale made by a specific customer.

```sql
DELETE FROM sales
WHERE customer_name = 'Catherine Lee' AND product_name = 'Keyboard';
```

✅ **What This Does**:  
Deletes the record for **Catherine Lee** who purchased a **Keyboard**.

---

#### 2. **Delete All Disputed Sales**

Let’s remove all sales that have been marked as disputed.

```sql
DELETE FROM sales
WHERE is_disputed = TRUE;
```

✅ **What This Does**:  
Deletes all rows where `is_disputed` is `TRUE`.

---

#### 3. **Delete Sales Older Than a Certain Date**

Suppose we want to clean up old sales data. Let’s delete all sales created before **June 5, 2024**.

```sql
DELETE FROM sales
WHERE date_created < '2024-06-05';
```

✅ **What This Does**:  
Removes all sales records where `date_created` is earlier than **June 5, 2024**.

---

#### 4. **Delete All Sales with Zero Volume**

Let’s delete any sales where the `volume` is **0**.

```sql
DELETE FROM sales
WHERE volume = 0;
```

✅ **What This Does**:  
Deletes rows where `volume` is **0**, indicating invalid or erroneous entries.

---

### 🔍 **Verify Deletions with `RETURNING` (PostgreSQL Specific)**

In PostgreSQL, you can use the `RETURNING` clause to see which rows were deleted.

**Example**:

```sql
DELETE FROM sales
WHERE is_recurring = TRUE
RETURNING *;
```

✅ **What This Does**:  
Deletes all recurring sales and returns the details of the deleted rows.

---

### ❗ **Important Considerations**

1. **Use `WHERE` Carefully**:

   - Always use a `WHERE` clause to specify which rows to delete. Omitting `WHERE` will delete **all rows** in the table.

2. **Backup Before Deleting**:

   - For bulk deletions, it’s a good idea to create a backup of the data first.

3. **Check Dependencies**:

   - If there are foreign key constraints, deleting rows may affect related tables. Be mindful of cascading deletions.

4. **Use Transactions**:
   - Wrap deletions in transactions (`BEGIN`, `COMMIT`, `ROLLBACK`) to safely manage changes.

---

### 🧩 **Practice Tasks**

1. **Delete a Specific Sale**:  
   Delete the sale made by **“David Brown”** where the product was a **“Monitor”**.

2. **Delete Disputed Sales with High Volume**:  
   Remove all disputed sales where the `volume` is greater than **3000**.

3. **Delete Old Sales**:  
   Delete all sales created before **June 10, 2024**.

4. **Delete Sales with Zero or Negative Volume**:  
   Ensure there are no sales with `volume` equal to **0** or less (if any exist).

---

### 🌟 **Summary**

- The `DELETE` statement allows you to remove specific rows from a table.
- Always use a `WHERE` clause to avoid deleting all data unintentionally.
- Use `RETURNING` in PostgreSQL to see the deleted rows.
- Practice safe deletion by testing conditions and making backups when necessary.

You’re now ready to practice deleting data in your database! 🚀😊
