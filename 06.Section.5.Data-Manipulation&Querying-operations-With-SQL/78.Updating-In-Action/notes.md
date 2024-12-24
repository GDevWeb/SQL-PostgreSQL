# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 78: Updating In Action** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763116#overview)
- [code - updating data - wrong data](code/04-insert-wrong-data.sql)

---

### 🚀 **Goal of This Module**

In this module, we'll practice updating data in the `sales` table. We’ll perform various updates to demonstrate how to modify existing records based on different conditions. This hands-on practice will solidify your understanding of the `UPDATE` statement in SQL.

---

### 📝 **Recap of the Sales Table Structure**

Before we begin, here’s a quick reminder of the `sales` table structure:

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

### 🛠️ **Examples of Data Updates**

#### 1. **Update the `date_fulfilled` for Sales Without a Fulfillment Date**

Let's update the `date_fulfilled` for sales that currently have a `NULL` value.

```sql
UPDATE sales
SET date_fulfilled = CURRENT_DATE
WHERE date_fulfilled IS NULL;
```

✅ **What This Does**:  
Sets `date_fulfilled` to the current date for any records where `date_fulfilled` is `NULL`.

---

#### 2. **Mark Large Sales as Recurring**

Let's mark all sales with a `volume` greater than 1000 as recurring.

```sql
UPDATE sales
SET is_recurring = TRUE
WHERE volume > 1000;
```

✅ **What This Does**:  
Sets `is_recurring` to `TRUE` for sales where the `volume` exceeds 1000.

---

#### 3. **Apply a Discount to High-Volume Sales**

Let’s apply a 10% discount to sales with a `volume` greater than 2000.

```sql
UPDATE sales
SET volume = volume * 0.9
WHERE volume > 2000;
```

✅ **What This Does**:  
Reduces the `volume` by 10% for sales with a `volume` greater than 2000.

---

#### 4. **Update Product Names for Specific Customers**

Suppose the product name for a specific customer needs to be corrected.

```sql
UPDATE sales
SET product_name = 'Wireless Headphones'
WHERE customer_name = 'Jane Doe' AND product_name = 'Headphones';
```

✅ **What This Does**:  
Changes the `product_name` to `'Wireless Headphones'` for sales made by **Jane Doe** where the product was initially recorded as **Headphones**.

---

### 🔍 **Verify Updates with `RETURNING`**

In PostgreSQL, you can use the `RETURNING` clause to see the rows affected by an `UPDATE`.

**Example**:

```sql
UPDATE sales
SET is_disputed = TRUE
WHERE volume > 5000
RETURNING *;
```

✅ **What This Does**:  
Sets `is_disputed` to `TRUE` for sales with a `volume` greater than 5000 and returns the updated rows.

---

### ❗ **Important Considerations**

1. **Always Use `WHERE`**:

   - Without a `WHERE` clause, the `UPDATE` statement will modify **all rows** in the table.

2. **Check Constraints**:

   - Ensure that updates don’t violate constraints (e.g., `volume` cannot be negative).

3. **Backup Data**:

   - Before performing bulk updates, consider making a backup.

4. **Test with a `SELECT` Query First**:
   - Run a `SELECT` query with the same conditions to verify which rows will be updated.

---

### 📝 **Practice Tasks**

1. **Update Fulfillment Date**:  
   Set the `date_fulfilled` to **5 days after `date_created`** for all sales where `date_fulfilled` is `NULL`.

2. **Flag High-Volume Sales**:  
   Mark sales with a `volume` greater than **3000** as both **recurring** and **disputed**.

3. **Correct a Customer's Product Name**:  
   Change the product name for **“Frank Harris”** from **“Desk Chair”** to **“Ergonomic Chair”**.

---

### 🌟 **Summary**

- The `UPDATE` statement modifies existing records in a table.
- Always use the `WHERE` clause to target specific rows.
- You can use expressions, calculations, and the `RETURNING` clause to make updates more dynamic and transparent.
- Practicing updates will help you gain confidence in modifying your data safely and effectively.

Now it's your turn to practice these updates! 🚀😊
