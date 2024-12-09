# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **27. Module Introduction**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28612000#overview)

#### **What You’ll Learn in This Module**

This module focuses on **Data Definition Language (DDL)** in SQL. You will learn how to create and manage tables, define columns, and use different data types to ensure data is stored correctly and efficiently.

By the end of this module, you will be able to:

1. **Create tables** using appropriate data types for each column.
2. **Modify existing tables** (add, remove, or change columns).
3. **Delete tables** when they are no longer needed.
4. Understand the different **SQL data types** and how to use them.

---

### **Why Data Definitions Matter**

- **Foundation of Databases**: Defining tables and data types correctly ensures your database can efficiently store and retrieve data.
- **Data Integrity**: Using the right data types and constraints helps maintain accurate and consistent data.
- **Performance**: Proper table design and data types improve query performance and reduce storage needs.

---

### **Key Topics Covered**

1. **Creating Tables**:

   - Using the `CREATE TABLE` statement.
   - Defining columns with appropriate data types and constraints.

2. **Modifying Tables**:

   - Using the `ALTER TABLE` statement to add, delete, or modify columns.

3. **Dropping Tables**:

   - Using the `DROP TABLE` statement to delete tables.

4. **SQL Data Types**:

   - Understanding common data types like `INT`, `VARCHAR`, `DATE`, `BOOLEAN`, and `FLOAT`.

5. **Table Constraints**:
   - Applying constraints such as `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, and `UNIQUE` to enforce data integrity.

---

### **Examples**

#### **Creating a Table**

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);
```

#### **Modifying a Table**

```sql
ALTER TABLE Employees
ADD COLUMN Department VARCHAR(50);
```

#### **Dropping a Table**

```sql
DROP TABLE Employees;
```

---

### **Important Keywords & Definitions**

1. **DDL (Data Definition Language)**: SQL commands used to define and modify database structures (e.g., `CREATE`, `ALTER`, `DROP`).
2. **`CREATE TABLE`**: Command to create a new table in a database.
3. **Data Type**: Specifies the kind of data a column can hold (e.g., `INT`, `VARCHAR`, `DATE`).
4. **Constraint**: Rules applied to columns to enforce data integrity (e.g., `PRIMARY KEY`, `NOT NULL`).
5. **`ALTER TABLE`**: Command to modify an existing table’s structure.
6. **`DROP TABLE`**: Command to delete a table and its data from the database.

---

### **Exercises**

#### **Exercise 1: Create a Table**

Create a table named `Products` with the following columns:

- `ProductID` (Primary Key, Integer)
- `ProductName` (String, up to 100 characters)
- `Price` (Decimal with 2 decimal places)
- `InStock` (Boolean)

```sql
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    InStock BOOLEAN
);
```

---

#### **Exercise 2: Modify a Table**

Add a new column `Category` (String, up to 50 characters) to the `Products` table.

```sql
ALTER TABLE Products
ADD COLUMN Category VARCHAR(50);
```

---

#### **Exercise 3: Drop a Table**

Drop the `Products` table from the database.

```sql
DROP TABLE Products;
```

---

### **Next Steps**

Dive into the upcoming lessons to explore these commands and concepts in detail. Let me know if you need additional examples or explanations!
