# 02.Section2.SQL-Basics-Syntax&Features

## **13. Data Definition vs Data Manipulation**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29340814#overview)
- [schema - data-definitionVsData-manipulation-Statements](pdf/data-definitionVsData-manipulation-Statements.png)

---

### **Overview**

SQL commands are categorized into two primary groups: **Data Definition Statements (DDL)** and **Data Manipulation Statements (DML)**. Each serves a distinct purpose when working with databases.

---

### **1. Data Definition Statements (DDL)**

#### **Purpose**:

- Used to define and manage the **structure** of a database and its objects (e.g., tables, schemas, relationships).

#### **Key Features**:

- Define **databases**, **tables**, and **table structures**.
- Specify **constraints** (e.g., primary keys, foreign keys, unique constraints).
- Manage database objects (e.g., creating, altering, or dropping tables).

#### **Examples of DDL Commands**:

1. **`CREATE TABLE`**: Define a new table.

   ```sql
   CREATE TABLE Employees (
       EmployeeID INT PRIMARY KEY,
       Name VARCHAR(100),
       Department VARCHAR(50)
   );
   ```

2. **`ALTER TABLE`**: Modify an existing table.

   ```sql
   ALTER TABLE Employees
   ADD Salary DECIMAL(10, 2);
   ```

3. **`DROP TABLE`**: Remove a table.
   ```sql
   DROP TABLE Employees;
   ```

#### **When to Use**:

- When designing the database structure.
- When modifying the schema (e.g., adding or removing columns).

---

### **2. Data Manipulation Statements (DML)**

#### **Purpose**:

- Used to interact with and manipulate **data** stored in the database.

#### **Key Features**:

- Perform **CRUD** operations:
  - **Create**: Add data to a table.
  - **Read**: Retrieve data from a table.
  - **Update**: Modify existing data.
  - **Delete**: Remove data.
- Query data with filters, sorting, and joins.

#### **Examples of DML Commands**:

1. **`INSERT`**: Add new data.

   ```sql
   INSERT INTO Employees (EmployeeID, Name, Department, Salary)
   VALUES (1, 'Alice', 'HR', 50000);
   ```

2. **`SELECT`**: Retrieve data.

   ```sql
   SELECT * FROM Employees WHERE Department = 'HR';
   ```

3. **`UPDATE`**: Modify existing data.

   ```sql
   UPDATE Employees
   SET Salary = 55000
   WHERE EmployeeID = 1;
   ```

4. **`DELETE`**: Remove data.
   ```sql
   DELETE FROM Employees WHERE EmployeeID = 1;
   ```

#### **When to Use**:

- When inserting or updating records in the database.
- When querying and analyzing data.

---

### **Key Differences**

| **Aspect**     | **Data Definition (DDL)**                         | **Data Manipulation (DML)**               |
| -------------- | ------------------------------------------------- | ----------------------------------------- |
| **Purpose**    | Define and manage database structure.             | Manipulate and retrieve data.             |
| **Examples**   | `CREATE`, `ALTER`, `DROP`, `TRUNCATE`             | `INSERT`, `SELECT`, `UPDATE`, `DELETE`    |
| **Scope**      | Affects the schema and structure of the database. | Affects the data stored in tables.        |
| **Dependency** | Must be executed before DML commands can be used. | Operates on the structure defined by DDL. |

---

### **Important Keywords & Definitions**

1. **DDL (Data Definition Language)**: SQL commands used to define and manage the database structure.
2. **DML (Data Manipulation Language)**: SQL commands used to manage the data stored in a database.
3. **CRUD**: An acronym for Create, Read, Update, Delete—core operations in data manipulation.
4. **Constraints**: Rules applied to database objects (e.g., primary key, foreign key).

---

### **Exercises**

#### **Exercise 1: Define a Table**

Create a table named `Products` with the following columns:

- `ProductID` (Primary Key, Integer)
- `ProductName` (String, max 100 characters)
- `Price` (Decimal)

```sql
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);
```

---

#### **Exercise 2: Insert Data**

Insert a new product into the `Products` table:

- ProductID: 1
- ProductName: "Laptop"
- Price: 799.99

```sql
INSERT INTO Products (ProductID, ProductName, Price)
VALUES (1, 'Laptop', 799.99);
```

---

#### **Exercise 3: Query Data**

Retrieve all products from the `Products` table where the price is greater than `500`:

```sql
SELECT *
FROM Products
WHERE Price > 500;
```

---

#### **Exercise 4: Update Data**

Update the price of the product with `ProductID = 1` to `850.00`:

```sql
UPDATE Products
SET Price = 850.00
WHERE ProductID = 1;
```

---

#### **Exercise 5: Delete Data**

Remove the product with `ProductID = 1`:

```sql
DELETE FROM Products
WHERE ProductID = 1;
```

---

Let me know if you'd like further clarification or additional exercises!
