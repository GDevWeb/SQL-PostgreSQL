# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **52. Dealing with "No Data" (`NULL`) vs "0" in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614392#overview)

---

#### **Overview**

In PostgreSQL, **`NULL`** and **`0`** are fundamentally different concepts:

- **`NULL`**: Represents the **absence of data** or an **unknown value**.
- **`0`**: Represents a **numeric value** (zero).

Understanding the difference and how to work with them is crucial for maintaining accurate queries and data integrity.

---

### **Key Differences Between `NULL` and `0`**

| **Concept**    | **`NULL`**                                   | **`0`**                         |
| -------------- | -------------------------------------------- | ------------------------------- |
| **Meaning**    | Absence of data or unknown value             | Numeric value (zero)            |
| **Data Type**  | Can apply to any data type                   | Specific to numeric types       |
| **Operations** | Most operations with `NULL` result in `NULL` | Arithmetic operations are valid |

---

### **Working with `NULL` in PostgreSQL**

#### **1. Checking for `NULL` Values**

To check for `NULL` values in a query, use the **`IS NULL`** or **`IS NOT NULL`** operators.

##### **Example Table: `products`**

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2)
);
```

#### **Insert Sample Data**

```sql
INSERT INTO products (ProductName, Price)
VALUES
    ('Laptop', 999.99),
    ('Mouse', 0),
    ('Keyboard', NULL);
```

#### **Query `NULL` Values**

```sql
SELECT * FROM products WHERE Price IS NULL;
```

**Result:**

| ProductID | ProductName | Price |
| --------- | ----------- | ----- |
| 3         | Keyboard    | NULL  |

---

#### **2. Querying Non-`NULL` Values**

```sql
SELECT * FROM products WHERE Price IS NOT NULL;
```

**Result:**

| ProductID | ProductName | Price  |
| --------- | ----------- | ------ |
| 1         | Laptop      | 999.99 |
| 2         | Mouse       | 0.00   |

---

### **Handling `NULL` in Expressions**

When performing calculations, **`NULL`** values propagate through expressions.

#### **Example**

```sql
SELECT ProductName, Price * 1.1 AS NewPrice FROM products;
```

**Result:**

| ProductName | Price  | NewPrice |
| ----------- | ------ | -------- |
| Laptop      | 999.99 | 1099.99  |
| Mouse       | 0.00   | 0.00     |
| Keyboard    | NULL   | NULL     |

**Explanation**:

- The **`Keyboard`** has a `NULL` price, so `NULL * 1.1` results in `NULL`.

---

### **Using `COALESCE` to Handle `NULL` Values**

The **`COALESCE`** function returns the first non-`NULL` value from a list of arguments.

#### **Syntax**

```sql
COALESCE(value1, value2, ..., default_value)
```

#### **Example: Replacing `NULL` with a Default Value**

Replace `NULL` prices with `0`.

```sql
SELECT ProductName, COALESCE(Price, 0) AS PriceWithDefault
FROM products;
```

**Result:**

| ProductName | PriceWithDefault |
| ----------- | ---------------- |
| Laptop      | 999.99           |
| Mouse       | 0.00             |
| Keyboard    | 0.00             |

---

### **Using `NULLIF` to Handle Zero Values**

The **`NULLIF`** function returns `NULL` if two expressions are equal; otherwise, it returns the first expression.

#### **Syntax**

```sql
NULLIF(expression1, expression2)
```

#### **Example: Treating `0` as `NULL`**

Replace `0` with `NULL` for prices.

```sql
SELECT ProductName, NULLIF(Price, 0) AS PriceWithNull
FROM products;
```

**Result:**

| ProductName | PriceWithNull |
| ----------- | ------------- |
| Laptop      | 999.99        |
| Mouse       | NULL          |
| Keyboard    | NULL          |

---

### **Aggregating Data with `NULL` Values**

#### **1. `SUM` and `AVG` Ignore `NULL` Values**

```sql
SELECT
    SUM(Price) AS TotalPrice,
    AVG(Price) AS AveragePrice
FROM products;
```

**Result:**

| TotalPrice | AveragePrice |
| ---------- | ------------ |
| 999.99     | 499.995      |

**Explanation**:

- `SUM` and `AVG` ignore the `NULL` value in the `Price` column.

#### **2. Counting `NULL` Values**

Use **`COUNT`** and **`COUNT(*)`** to understand the difference in counting `NULL` and non-`NULL` values.

```sql
SELECT
    COUNT(*) AS TotalRows,
    COUNT(Price) AS RowsWithPrice
FROM products;
```

**Result:**

| TotalRows | RowsWithPrice |
| --------- | ------------- |
| 3         | 2             |

- **`COUNT(*)`** counts all rows.
- **`COUNT(Price)`** counts only rows where `Price` is not `NULL`.

---

### **Best Practices for Handling `NULL` and `0`**

1. **Use `IS NULL` and `IS NOT NULL`**:

   - Do not use `=` to compare with `NULL`; always use `IS NULL`.

2. **Use `COALESCE` for Default Values**:

   - Replace `NULL` with a meaningful default in queries.

3. **Use `NULLIF` for Conditional `NULL` Values**:

   - Convert `0` to `NULL` when needed.

4. **Be Careful with Aggregations**:
   - Remember that functions like `SUM` and `AVG` ignore `NULL` values.

---

### **Exercises**

#### **Exercise 1: Identify `NULL` Prices**

Query all products with `NULL` prices.

```sql
SELECT * FROM products WHERE Price IS NULL;
```

#### **Exercise 2: Replace `NULL` Prices with Default**

Replace `NULL` prices with `10.00` in a query.

```sql
SELECT ProductName, COALESCE(Price, 10.00) AS PriceWithDefault FROM products;
```

#### **Exercise 3: Treat `0` as `NULL`**

Replace `0` prices with `NULL`.

```sql
SELECT ProductName, NULLIF(Price, 0) AS PriceWithNull FROM products;
```

---

### **Summary**

- **`NULL`** represents the absence of data; **`0`** is a numeric value.
- Use **`IS NULL`** and **`IS NOT NULL`** to filter `NULL` values.
- Use **`COALESCE`** to replace `NULL` with a default value.
- Use **`NULLIF`** to turn specific values (like `0`) into `NULL`.
- Aggregation functions like **`SUM`** and **`AVG`** ignore `NULL` values.

Let me know if you need further clarification or additional examples! 😊
