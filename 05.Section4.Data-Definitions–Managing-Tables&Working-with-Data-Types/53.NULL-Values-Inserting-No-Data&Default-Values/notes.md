# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **53. `NULL` Values, Inserting (No) Data & Default Values in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28613664#overview)

---

### **Overview**

In this lecture, we will explore:

1. **Inserting `NULL` Values**.
2. The difference between **`NULL`** and actual values like `0`, `0.0`, and `''` (empty string).
3. How **default values** interact with `NULL`.

---

### **1. Understanding `NULL`**

- **`NULL`** represents the **absence of data**.
- `NULL` is **not** the same as:
  - **`0`**: Represents a valid numeric value.
  - **`0.0`**: Represents a valid decimal number.
  - **`''`**: Represents an empty string (for text columns).

---

### **2. Creating a Table with Potential `NULL` Values**

#### **Example Table: `employees`**

```sql
CREATE TABLE employees (
    FullName VARCHAR(200),
    Salary INT
);
```

---

### **3. Inserting Data with and Without `NULL` Values**

#### **Insert Data with All Columns Provided**

```sql
INSERT INTO employees (FullName, Salary)
VALUES ('Max Schwarz', 19000);
```

- **`Salary`** has a valid numeric value: `19000`.

#### **Insert Data with `NULL` by Omitting the Column**

```sql
INSERT INTO employees (FullName)
VALUES ('Anna White');
```

- The `Salary` column is omitted, so PostgreSQL sets it to `NULL` by default.

#### **Insert `NULL` Explicitly**

```sql
INSERT INTO employees (FullName, Salary)
VALUES ('John Doe', NULL);
```

---

### **4. Querying Data**

```sql
SELECT * FROM employees;
```

**Sample Output:**

| FullName    | Salary |
| ----------- | ------ |
| Max Schwarz | 19000  |
| Anna White  | NULL   |
| John Doe    | NULL   |

---

### **5. Aggregations and `NULL` Values**

When performing aggregate functions like **`AVG`**, **`SUM`**, or **`COUNT`**, `NULL` values are **ignored**.

#### **Example: Calculate the Average Salary**

```sql
SELECT AVG(Salary) AS AverageSalary FROM employees;
```

**Result:**

| AverageSalary |
| ------------- |
| 19000         |

- The `NULL` values are ignored in the calculation.

---

### **6. Using Default Values**

If a column has a **default value**, `NULL` is not inserted when the column is omitted in the `INSERT` statement. Instead, the **default value** is used.

#### **Modify the Table with a Default Value**

```sql
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    FullName VARCHAR(200),
    Salary INT DEFAULT 30000
);
```

#### **Insert Data Without Providing `Salary`**

```sql
INSERT INTO employees (FullName)
VALUES ('Jane Smith');
```

- The `Salary` column uses the **default value** of `30000`.

#### **Insert Data with a Specific `Salary`**

```sql
INSERT INTO employees (FullName, Salary)
VALUES ('Michael Brown', 45000);
```

#### **Check the Data**

```sql
SELECT * FROM employees;
```

**Result:**

| FullName      | Salary |
| ------------- | ------ |
| Jane Smith    | 30000  |
| Michael Brown | 45000  |

---

### **7. Combining `NULL` and Default Values**

When a default value is defined, the default is used unless `NULL` is explicitly provided.

#### **Insert `NULL` Explicitly**

```sql
INSERT INTO employees (FullName, Salary)
VALUES ('Sarah Green', NULL);
```

- This will insert `NULL` for `Salary`, overriding the default.

#### **Result**

```sql
SELECT * FROM employees;
```

**Output:**

| FullName      | Salary |
| ------------- | ------ |
| Jane Smith    | 30000  |
| Michael Brown | 45000  |
| Sarah Green   | NULL   |

---

### **Summary of Key Points**

1. **`NULL`** represents missing data, not `0`, `0.0`, or `''`.
2. **Omitting a column** during `INSERT` results in `NULL` if no default is specified.
3. **Default values** replace `NULL` only when the column is omitted in `INSERT`.
4. Aggregate functions like **`AVG`**, **`SUM`**, and **`COUNT`** ignore `NULL` values.
5. To insert `NULL` explicitly, provide `NULL` in the `INSERT` statement.

---

### **Exercises**

#### **Exercise 1: Create a `products` Table**

Create a `products` table with:

- `ProductName` (`VARCHAR(100)`, not null)
- `Price` (`DECIMAL(10, 2)`, default `10.00`)

```sql
CREATE TABLE products (
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) DEFAULT 10.00
);
```

#### **Exercise 2: Insert Data**

1. Insert a product with a price:

   ```sql
   INSERT INTO products (ProductName, Price) VALUES ('Laptop', 799.99);
   ```

2. Insert a product without specifying a price:

   ```sql
   INSERT INTO products (ProductName) VALUES ('Mouse');
   ```

3. Insert a product with `NULL` as the price:

   ```sql
   INSERT INTO products (ProductName, Price) VALUES ('Keyboard', NULL);
   ```

#### **Exercise 3: Query the Table**

Retrieve all products.

```sql
SELECT * FROM products;
```

---

Let me know if you need further clarification or more examples! 😊
