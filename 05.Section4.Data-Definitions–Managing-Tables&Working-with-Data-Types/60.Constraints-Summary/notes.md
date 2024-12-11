# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **60. Constraints - Summary in PostgreSQL and MySQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28634594#overview)

---

### **Overview**

Constraints in SQL are rules applied to columns or tables to enforce **data integrity** and ensure that the database maintains accurate and consistent information. They help prevent invalid data from being inserted, updated, or deleted.

This summary covers the most commonly used constraints in PostgreSQL and MySQL:

1. **PRIMARY KEY**
2. **FOREIGN KEY**
3. **NOT NULL**
4. **UNIQUE**
5. **CHECK**
6. **DEFAULT**

---

### **1. PRIMARY KEY**

- **Purpose**: Uniquely identifies each row in a table.
- **Characteristics**:
  - Combines **`NOT NULL`** and **`UNIQUE`** constraints.
  - A table can have **only one primary key**.
  - Auto-incrementing IDs are often used as primary keys.

#### **Example**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL
);
```

---

### **2. FOREIGN KEY**

- **Purpose**: Establishes a relationship between two tables.
- **Characteristics**:
  - Ensures that a value in one table matches a value in another table (referential integrity).
  - Can reference a primary key or a unique key.

#### **Example**

```sql
CREATE TABLE orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);
```

---

### **3. NOT NULL**

- **Purpose**: Ensures that a column cannot contain `NULL` values.
- **Characteristics**:
  - Guarantees that a column always has a value.
  - Useful for mandatory fields like names or email addresses.

#### **Example**

```sql
CREATE TABLE users (
    UserID SERIAL PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL
);
```

---

### **4. UNIQUE**

- **Purpose**: Ensures that all values in a column are unique.
- **Characteristics**:
  - Allows `NULL` values unless combined with `NOT NULL`.
  - A table can have **multiple unique constraints**.

#### **Example**

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) UNIQUE,
    SKU VARCHAR(50) UNIQUE NOT NULL
);
```

---

### **5. CHECK**

- **Purpose**: Ensures that values in a column meet a specific condition.
- **Characteristics**:
  - Can enforce rules like ranges or logical conditions.
  - Can be applied to single or multiple columns.

#### **Example**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Salary DECIMAL(10, 2) CHECK (Salary > 0),
    Age INT CHECK (Age >= 18)
);
```

---

### **6. DEFAULT**

- **Purpose**: Provides a default value when no value is specified during insertion.
- **Characteristics**:
  - Simplifies data insertion by supplying a predefined value.
  - Can be used with `NOT NULL` to ensure data consistency.

#### **Example**

```sql
CREATE TABLE tasks (
    TaskID SERIAL PRIMARY KEY,
    Description VARCHAR(255),
    Status VARCHAR(20) DEFAULT 'Pending',
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

---

### **Combining Constraints**

You can combine multiple constraints on a single column for more robust data integrity.

#### **Example**

```sql
CREATE TABLE students (
    StudentID SERIAL PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE NOT NULL,
    Age INT CHECK (Age >= 18),
    EnrollmentDate DATE DEFAULT CURRENT_DATE
);
```

---

### **Summary Table of Constraints**

| **Constraint**  | **Description**                                 | **Example**                                                 |
| --------------- | ----------------------------------------------- | ----------------------------------------------------------- |
| **PRIMARY KEY** | Uniquely identifies each row in a table         | `EmployeeID SERIAL PRIMARY KEY`                             |
| **FOREIGN KEY** | Links two tables by referencing a primary key   | `FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)` |
| **NOT NULL**    | Ensures a column cannot have `NULL` values      | `FullName VARCHAR(100) NOT NULL`                            |
| **UNIQUE**      | Ensures all values in a column are unique       | `Email VARCHAR(150) UNIQUE`                                 |
| **CHECK**       | Ensures column values meet specific conditions  | `Age INT CHECK (Age >= 18)`                                 |
| **DEFAULT**     | Provides a default value when none is specified | `Status VARCHAR(20) DEFAULT 'Pending'`                      |

---

### **Best Practices for Using Constraints**

1. **Primary Keys**:

   - Always use a primary key to uniquely identify each row.
   - Use auto-incrementing IDs (`SERIAL` or `AUTO_INCREMENT`) for simplicity.

2. **Foreign Keys**:

   - Use foreign keys to maintain referential integrity between related tables.
   - Consider `ON DELETE` and `ON UPDATE` actions (e.g., `CASCADE` or `SET NULL`).

3. **NOT NULL**:

   - Use `NOT NULL` for fields that must always have a value (e.g., names, emails).

4. **Unique Constraints**:

   - Apply `UNIQUE` constraints to fields that should not have duplicate values (e.g., usernames, emails).

5. **Check Constraints**:

   - Use `CHECK` constraints for validating data ranges or conditions (e.g., positive numbers, age limits).

6. **Defaults**:
   - Provide default values to ensure consistency and reduce the need for manual data entry.

---

### **Exercises**

#### **Exercise 1: Create a `products` Table**

Create a `products` table with the following constraints:

- `ProductID` (Auto-increment primary key)
- `ProductName` (`VARCHAR(100)`, not null, unique)
- `Price` (`DECIMAL(10, 2)`, must be greater than `0`)
- `Stock` (`INT`, default to `0`)

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL UNIQUE,
    Price DECIMAL(10, 2) CHECK (Price > 0),
    Stock INT DEFAULT 0
);
```

#### **Exercise 2: Insert Valid and Invalid Data**

1. Insert valid data:

```sql
INSERT INTO products (ProductName, Price, Stock)
VALUES ('Laptop', 999.99, 10);
```

2. Attempt to insert invalid data (negative price):

```sql
INSERT INTO products (ProductName, Price, Stock)
VALUES ('Mouse', -5.00, 50);
```

**Expected Error**:

```
ERROR: new row for relation "products" violates check constraint "products_price_check"
```

---

### **Summary**

- Constraints ensure **data integrity** and **consistency**.
- Use **`PRIMARY KEY`**, **`FOREIGN KEY`**, **`NOT NULL`**, **`UNIQUE`**, **`CHECK`**, and **`DEFAULT`** constraints based on your data requirements.
- Combining constraints provides robust protection against invalid data.

Let me know if you need further clarification or more examples! 😊
