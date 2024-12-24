# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 82: Filtering with `WHERE` — Available Comparison Operators & Variations** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28701336#overview)

---

### 🚀 **Goal of This Module**

In this module, you'll learn how to filter data using the `WHERE` clause and explore the various comparison operators and variations available in SQL. These operators allow you to create precise conditions for selecting specific rows from your tables.

---

### 📝 **Recap of the `WHERE` Clause**

The `WHERE` clause is used to filter records based on specific conditions. Only rows that meet the conditions will be returned.

**Basic Syntax**:

```sql
SELECT column1, column2
FROM table_name
WHERE condition;
```

---

### 🛠️ **Comparison Operators**

Here are the most commonly used **comparison operators** in SQL:

| **Operator** | **Description**          | **Example**                     |
| ------------ | ------------------------ | ------------------------------- |
| `=`          | Equal to                 | `WHERE volume = 1000`           |
| `<>` or `!=` | Not equal to             | `WHERE customer_name != 'John'` |
| `>`          | Greater than             | `WHERE volume > 1000`           |
| `<`          | Less than                | `WHERE volume < 500`            |
| `>=`         | Greater than or equal to | `WHERE volume >= 1000`          |
| `<=`         | Less than or equal to    | `WHERE volume <= 500`           |

---

### 🔍 **Examples**

#### 1. **Filter with `=` (Equal To)**

Retrieve all sales where the `product_name` is **“Laptop”**.

```sql
SELECT * FROM sales
WHERE product_name = 'Laptop';
```

---

#### 2. **Filter with `<>` or `!=` (Not Equal To)**

Find all sales where the `customer_name` is **not** “Alice Johnson”.

```sql
SELECT * FROM sales
WHERE customer_name != 'Alice Johnson';
```

---

#### 3. **Filter with `>` (Greater Than)**

Retrieve sales where the `volume` is greater than **1000**.

```sql
SELECT * FROM sales
WHERE volume > 1000;
```

---

#### 4. **Filter with `<` (Less Than)**

Find sales where the `volume` is less than **500**.

```sql
SELECT * FROM sales
WHERE volume < 500;
```

---

#### 5. **Filter with `>=` (Greater Than or Equal To)**

Get all sales where the `volume` is **1000 or more**.

```sql
SELECT * FROM sales
WHERE volume >= 1000;
```

---

#### 6. **Filter with `<=` (Less Than or Equal To)**

Retrieve all sales where the `volume` is **500 or less**.

```sql
SELECT * FROM sales
WHERE volume <= 500;
```

---

### 🔄 **Combining Conditions with `AND`, `OR`, and `NOT`**

You can combine multiple conditions using logical operators.

#### 1. **Using `AND`**

Retrieve sales where the `volume` is greater than **1000** and the sale is marked as **recurring**.

```sql
SELECT * FROM sales
WHERE volume > 1000 AND is_recurring = TRUE;
```

---

#### 2. **Using `OR`**

Find sales where the `volume` is greater than **2000** or the sale is **disputed**.

```sql
SELECT * FROM sales
WHERE volume > 2000 OR is_disputed = TRUE;
```

---

#### 3. **Using `NOT`**

Retrieve sales where the sale is **not disputed**.

```sql
SELECT * FROM sales
WHERE NOT is_disputed;
```

---

### 🗂️ **Additional Variations**

#### 1. **Using `IN`**

The `IN` operator checks if a value matches any value in a list.

```sql
SELECT * FROM sales
WHERE product_name IN ('Laptop', 'Monitor', 'Keyboard');
```

✅ **What This Does**:  
Retrieves sales for products that are **“Laptop”**, **“Monitor”**, or **“Keyboard”**.

---

#### 2. **Using `BETWEEN`**

The `BETWEEN` operator filters within a range of values (inclusive).

```sql
SELECT * FROM sales
WHERE volume BETWEEN 500 AND 2000;
```

✅ **What This Does**:  
Finds sales with `volume` between **500** and **2000**.

---

#### 3. **Using `LIKE` for Pattern Matching**

The `LIKE` operator is used for pattern matching with wildcards:

- **`%`**: Matches any sequence of characters.
- **`_`**: Matches a single character.

```sql
SELECT * FROM sales
WHERE customer_name LIKE 'J%';
```

✅ **What This Does**:  
Finds all customers whose names start with the letter **“J”**.

---

#### 4. **Using `IS NULL` and `IS NOT NULL`**

Check for `NULL` or non-`NULL` values.

```sql
SELECT * FROM sales
WHERE date_fulfilled IS NULL;
```

✅ **What This Does**:  
Retrieves sales where `date_fulfilled` is `NULL`.

---

### 📝 **Practice Tasks**

1. **Find High-Volume Sales**:  
   Retrieve all sales where the `volume` is greater than **2000**.

2. **Find Sales by Specific Customers**:  
   Retrieve sales where the `customer_name` is either **“Alice Johnson”** or **“Bob Smith”**.

3. **Find Recent Sales**:  
   Retrieve sales created **between June 5, 2024, and June 15, 2024**.

4. **Find Out-of-Stock Sales**:  
   Retrieve sales where `volume` is **0**.

5. **Pattern Matching**:  
   Find customers whose names start with the letter **“E”**.

---

### 🌟 **Summary**

- **Comparison Operators**: Use `=`, `<>`, `!=`, `>`, `<`, `>=`, and `<=` for filtering.
- **Logical Operators**: Combine conditions using `AND`, `OR`, and `NOT`.
- **Variations**: Use `IN`, `BETWEEN`, `LIKE`, `IS NULL`, and `IS NOT NULL` for more advanced filtering.
- Always test your queries to ensure they return the expected results.

Now it's your turn to practice filtering with `WHERE`! 🚀😊
