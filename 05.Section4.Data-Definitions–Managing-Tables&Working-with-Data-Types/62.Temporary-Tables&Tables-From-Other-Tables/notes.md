# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **62. Temporary Tables & Tables From Other Tables in PostgreSQL and MySQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614456#overview)
- [schema-more-way-creating-table](img/schema-more-way-creating-table.png)

---

### **Overview**

In this lesson, we'll explore how to:

1. **Create temporary tables**: Useful for storing intermediate results that are needed only during the current session.
2. **Create new tables from existing tables**: This allows you to duplicate structures or create subsets of data.

Both PostgreSQL and MySQL support these operations, with some differences in syntax and behavior.

---

### **1. Temporary Tables**

**Temporary tables** are created for temporary storage of data. They only exist for the duration of the current database session or transaction.

#### **Key Characteristics:**

- Automatically deleted when the session or transaction ends.
- Each session gets its own instance of the temporary table.
- You can manipulate temporary tables just like regular tables.

---

#### **1.1. Creating Temporary Tables**

**Syntax**:

```sql
CREATE TEMPORARY TABLE temp_table_name (
    column1 data_type,
    column2 data_type,
    ...
);
```

#### **PostgreSQL Example**

```sql
CREATE TEMPORARY TABLE temp_users (
    UserID SERIAL PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(150)
);
```

#### **MySQL Example**

```sql
CREATE TEMPORARY TABLE temp_users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(150)
);
```

---

#### **1.2. Inserting and Querying Data in Temporary Tables**

```sql
INSERT INTO temp_users (FullName, Email)
VALUES ('Alice Johnson', 'alice.johnson@example.com'),
       ('Bob Smith', 'bob.smith@example.com');

SELECT * FROM temp_users;
```

**Output:**

| UserID | FullName      | Email                     |
| ------ | ------------- | ------------------------- |
| 1      | Alice Johnson | alice.johnson@example.com |
| 2      | Bob Smith     | bob.smith@example.com     |

---

#### **1.3. Temporary Table Scope**

- **Session Scope**: The table exists as long as the session is open.
- **Transaction Scope (PostgreSQL)**: If defined within a transaction, the table is dropped when the transaction ends.

#### **Example in PostgreSQL**

```sql
BEGIN;

CREATE TEMPORARY TABLE temp_products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100)
);

INSERT INTO temp_products (ProductName) VALUES ('Laptop');

SELECT * FROM temp_products; -- This works within the transaction

COMMIT;

SELECT * FROM temp_products; -- This fails because the table is gone
```

---

### **2. Creating Tables from Existing Tables**

You can create a new table based on the structure and data of an existing table.

#### **2.1. Create Table with Structure Only**

This creates a table with the same structure but **no data**.

**Syntax**:

```sql
CREATE TABLE new_table_name AS
SELECT * FROM existing_table WHERE 1=0;
```

#### **PostgreSQL Example**

```sql
CREATE TABLE archived_users AS
SELECT * FROM users WHERE 1=0;
```

#### **MySQL Example**

```sql
CREATE TABLE archived_users LIKE users;
```

---

#### **2.2. Create Table with Structure and Data**

This creates a table with both the structure and the data of the original table.

**Syntax**:

```sql
CREATE TABLE new_table_name AS
SELECT * FROM existing_table;
```

#### **PostgreSQL Example**

```sql
CREATE TABLE archived_users AS
SELECT * FROM users;
```

#### **MySQL Example**

```sql
CREATE TABLE archived_users AS
SELECT * FROM users;
```

---

#### **2.3. Create Table with Subset of Columns and Rows**

You can also create a table with a specific subset of columns and rows.

#### **Example**

```sql
CREATE TABLE high_salary_users AS
SELECT UserID, FullName, YearlySalary
FROM users
WHERE YearlySalary > 50000;
```

---

### **3. Differences Between PostgreSQL and MySQL**

| **Feature**                      | **PostgreSQL**                                   | **MySQL**                                    |
| -------------------------------- | ------------------------------------------------ | -------------------------------------------- |
| **Temporary Table Creation**     | `CREATE TEMPORARY TABLE temp_name (...)`         | `CREATE TEMPORARY TABLE temp_name (...)`     |
| **Session Scope**                | Dropped at end of session or transaction         | Dropped at end of session                    |
| **Create from Structure Only**   | `CREATE TABLE new_table AS SELECT ... WHERE 1=0` | `CREATE TABLE new_table LIKE existing_table` |
| **Create from Structure & Data** | `CREATE TABLE new_table AS SELECT ...`           | `CREATE TABLE new_table AS SELECT ...`       |

---

### **4. Use Cases for Temporary Tables**

1. **Complex Queries**:

   - Store intermediate results for use in complex queries.

2. **Performance Optimization**:

   - Improve performance by breaking down large queries into smaller steps.

3. **Data Processing**:

   - Process data temporarily without affecting permanent tables.

4. **Testing and Debugging**:
   - Test queries without modifying real data.

---

### **Exercises**

#### **Exercise 1: Create a Temporary Table**

1. Create a temporary table `temp_sales` with columns:

   - `SaleID` (Auto-increment primary key)
   - `ProductName` (`VARCHAR(100)`)
   - `Amount` (`DECIMAL(10, 2)`)

2. Insert sample data into the temporary table.

**PostgreSQL**:

```sql
CREATE TEMPORARY TABLE temp_sales (
    SaleID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Amount DECIMAL(10, 2)
);

INSERT INTO temp_sales (ProductName, Amount)
VALUES ('Laptop', 999.99), ('Mouse', 19.99);

SELECT * FROM temp_sales;
```

#### **Exercise 2: Create a Table from an Existing Table**

1. Create a new table `high_revenue_employers` containing employers with `YearlyRevenue` greater than `100`.

**PostgreSQL/MySQL**:

```sql
CREATE TABLE high_revenue_employers AS
SELECT * FROM employers WHERE YearlyRevenue > 100;

SELECT * FROM high_revenue_employers;
```

---

### **Summary**

- **Temporary Tables** are session-specific tables used for intermediate data storage.
- **Creating Tables from Other Tables** allows you to duplicate structures and data for backup or analysis.
- PostgreSQL and MySQL offer similar functionality with slight syntax differences.
- Temporary tables are automatically dropped at the end of a session or transaction.

Let me know if you need further clarification or more examples! 😊
