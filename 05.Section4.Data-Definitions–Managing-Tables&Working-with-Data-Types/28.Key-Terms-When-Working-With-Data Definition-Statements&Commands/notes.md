# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

### **28. Key Terms When Working With Data Definition Statements & Commands**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28613990#overview)
- [schema - database & table hierarchy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28613990#overview)

---

In this lesson, we'll define the key terms and concepts you'll encounter when using **Data Definition Language (DDL)** statements in SQL. These terms are essential for understanding how to create, modify, and manage database structures effectively.

---

### **Key Terms and Definitions**

1. **Data Definition Language (DDL)**

   - A subset of SQL used to define and manage database structures.
   - **Examples**: `CREATE`, `ALTER`, `DROP`.

2. **Table**

   - A structured set of rows and columns used to store data.
   - **Example**: The `Employees` table storing employee details.

3. **Column**

   - A vertical entity in a table representing a specific attribute (field).
   - **Example**: `Name` or `Salary`.

4. **Row (Record)**

   - A horizontal entry in a table containing data for each column.
   - **Example**: A single employee's details.

5. **Data Type**

   - Defines the type of data a column can store.
   - **Examples**:
     - **`INT`**: Integer values.
     - **`VARCHAR`**: Variable-length string.
     - **`DATE`**: Date values.

6. **Primary Key**

   - A unique identifier for each row in a table.
   - **Characteristics**: Cannot be `NULL` and must be unique.
   - **Example**:
     ```sql
     EmployeeID INT PRIMARY KEY
     ```

7. **Foreign Key**

   - A field in one table that references the primary key in another table to establish a relationship.
   - **Example**:
     ```sql
     DepartmentID INT REFERENCES Departments(DepartmentID)
     ```

8. **Constraint**

   - Rules applied to columns to enforce data integrity.
   - **Common Constraints**:
     - **`NOT NULL`**: Ensures the column cannot have `NULL` values.
     - **`UNIQUE`**: Ensures all values in a column are unique.
     - **`DEFAULT`**: Sets a default value for a column if no value is provided.
     - **`CHECK`**: Ensures that all values satisfy a specified condition.

9. **Index**

   - A database object that improves the speed of data retrieval operations.
   - **Example**:
     ```sql
     CREATE INDEX idx_name ON Employees(Name);
     ```

10. **Schema**

    - The organizational structure of a database that defines tables, columns, and relationships.
    - **Example**: A schema containing tables like `Employees`, `Departments`, and `Salaries`.

11. **`CREATE TABLE`**

    - A DDL statement used to create a new table.
    - **Syntax**:
      ```sql
      CREATE TABLE TableName (
          Column1 DataType,
          Column2 DataType
      );
      ```

12. **`ALTER TABLE`**

    - A DDL statement used to modify an existing table (e.g., add, remove, or change columns).
    - **Example**:
      ```sql
      ALTER TABLE Employees ADD COLUMN Department VARCHAR(50);
      ```

13. **`DROP TABLE`**

    - A DDL statement used to delete a table and its data.
    - **Example**:
      ```sql
      DROP TABLE Employees;
      ```

14. **`TRUNCATE TABLE`**
    - A DDL statement that removes all rows from a table without deleting the table structure.
    - **Example**:
      ```sql
      TRUNCATE TABLE Employees;
      ```

---

### **Examples of DDL Commands**

#### **Create a Table with Constraints**

```sql
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) DEFAULT 0.00,
    InStock BOOLEAN CHECK (InStock IN (TRUE, FALSE))
);
```

#### **Modify a Table**

Add a new column `Category` to the `Products` table:

```sql
ALTER TABLE Products
ADD COLUMN Category VARCHAR(50);
```

#### **Drop a Table**

Delete the `Products` table:

```sql
DROP TABLE Products;
```

---

### **Important Keywords & Definitions Recap**

1. **DDL**: Data Definition Language for managing database structures.
2. **Primary Key**: Unique identifier for each row.
3. **Foreign Key**: Field linking one table to another.
4. **Constraint**: Rules to maintain data integrity.
5. **Index**: Speeds up data retrieval.
6. **Schema**: Defines the structure and organization of a database.

---

### **Exercises**

#### **Exercise 1: Create a Table**

Create a table `Customers` with the following columns:

- `CustomerID` (Primary Key, `INT`)
- `Name` (`VARCHAR(100)`, Not Null)
- `Email` (`VARCHAR(150)`, Unique)
- `JoinDate` (`DATE`)

```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE,
    JoinDate DATE
);
```

---

#### **Exercise 2: Add a Constraint**

Add a `PhoneNumber` column to the `Customers` table with a `NOT NULL` constraint.

```sql
ALTER TABLE Customers
ADD COLUMN PhoneNumber VARCHAR(15) NOT NULL;
```

---

#### **Exercise 3: Drop a Table**

Drop the `Customers` table.

```sql
DROP TABLE Customers;
```

---

Let me know if you need more examples or clarifications on any key terms!
