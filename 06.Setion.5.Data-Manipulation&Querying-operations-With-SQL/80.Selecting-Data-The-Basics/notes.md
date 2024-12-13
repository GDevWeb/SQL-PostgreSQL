# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 80: Selecting Data — The Basics** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763228#overview)

---

### 🚀 **Goal of This Module**

In this module, we'll explore the fundamental concepts of **selecting data** from a database using the `SELECT` statement. You’ll learn how to retrieve specific information from your tables, apply filters, and sort the results.

---

### 🛠️ **Basic Syntax of `SELECT`**

The `SELECT` statement is used to retrieve data from one or more columns in a table.

```sql
SELECT column1, column2, ...
FROM table_name;
```

- **`column1, column2, ...`**: The specific columns you want to retrieve.
- **`table_name`**: The name of the table where the data is stored.

---

### ✅ **Examples**

#### 1. **Select All Columns**

To retrieve all columns from a table, use the wildcard `*`.

```sql
SELECT * FROM sales;
```

✅ **What This Does**:  
Retrieves all columns and rows from the `sales` table.

---

#### 2. **Select Specific Columns**

Retrieve only the `customer_name` and `product_name` from the `sales` table.

```sql
SELECT customer_name, product_name FROM sales;
```

✅ **What This Does**:  
Displays only the `customer_name` and `product_name` columns for each row.

---

### 🔍 **Using the `WHERE` Clause to Filter Data**

The `WHERE` clause filters rows based on specified conditions.

**Syntax**:

```sql
SELECT column1, column2
FROM table_name
WHERE condition;
```

#### 3. **Filter by Condition**

Retrieve all sales where the `volume` is greater than 1000.

```sql
SELECT * FROM sales
WHERE volume > 1000;
```

✅ **What This Does**:  
Returns rows where the `volume` is greater than 1000.

---

### 🔄 **Combining Conditions with `AND` / `OR`**

- **`AND`**: Both conditions must be true.
- **`OR`**: At least one condition must be true.

#### 4. **Filter with Multiple Conditions**

Find all sales where the `volume` is greater than 1000 **and** the sale is marked as recurring.

```sql
SELECT * FROM sales
WHERE volume > 1000 AND is_recurring = TRUE;
```

✅ **What This Does**:  
Retrieves sales with a `volume` greater than 1000 that are also recurring.

#### 5. **Filter with `OR`**

Find sales that are either recurring **or** disputed.

```sql
SELECT * FROM sales
WHERE is_recurring = TRUE OR is_disputed = TRUE;
```

✅ **What This Does**:  
Returns rows where `is_recurring` is `TRUE` or `is_disputed` is `TRUE`.

---

### 🗂️ **Sorting Data with `ORDER BY`**

You can sort query results in ascending or descending order.

**Syntax**:

```sql
SELECT column1, column2
FROM table_name
ORDER BY column1 ASC;   -- Default is ASC (ascending)
```

#### 6. **Sort by Volume (Descending)**

Retrieve all sales sorted by `volume` in descending order.

```sql
SELECT * FROM sales
ORDER BY volume DESC;
```

✅ **What This Does**:  
Displays all sales sorted by `volume` from highest to lowest.

---

### 🎯 **Using `LIMIT` to Restrict Results**

The `LIMIT` clause restricts the number of rows returned.

#### 7. **Get Top 5 Sales**

```sql
SELECT * FROM sales
ORDER BY volume DESC
LIMIT 5;
```

✅ **What This Does**:  
Returns the top 5 sales based on `volume`.

---

### 📋 **Combining Multiple Clauses**

You can combine `SELECT`, `WHERE`, `ORDER BY`, and `LIMIT` for more complex queries.

**Example**:

```sql
SELECT customer_name, product_name, volume
FROM sales
WHERE is_recurring = TRUE
ORDER BY volume DESC
LIMIT 3;
```

✅ **What This Does**:

- Retrieves the `customer_name`, `product_name`, and `volume` for recurring sales.
- Sorts them by `volume` in descending order.
- Returns only the top 3 results.

---

### 📝 **Practice Tasks**

1. **Select All Data**:  
   Retrieve all columns from the `sales` table.

2. **Select Specific Columns**:  
   Retrieve only `customer_name` and `date_created` from the `sales` table.

3. **Filter Sales by Volume**:  
   Retrieve all sales where the `volume` is greater than 500.

4. **Filter Recurring or Disputed Sales**:  
   Retrieve sales that are either recurring or disputed.

5. **Sort by Date Created**:  
   Retrieve all sales sorted by `date_created` in ascending order.

6. **Limit Results**:  
   Retrieve the top 5 most recent sales.

---

### 🌟 **Summary**

- **`SELECT`** is the primary statement for retrieving data.
- Use **`WHERE`** to filter rows based on conditions.
- Use **`ORDER BY`** to sort results.
- Use **`LIMIT`** to restrict the number of rows returned.
- Combine these clauses to form powerful queries.

You’re now ready to practice basic data retrieval and filtering! 🚀😊
