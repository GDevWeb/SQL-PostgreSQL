# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **38. Getting Started With the `CREATE TABLE` Statement & Syntax in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614018#overview)

---

#### **Overview**

The `CREATE TABLE` statement in PostgreSQL is used to **define a new table** in a database. When creating a table, you specify the **table name**, **columns**, **data types**, and any **constraints** to enforce rules on the data.

Understanding the syntax of `CREATE TABLE` is essential for designing and structuring your database effectively.

---

### **Basic Syntax of `CREATE TABLE`**

```sql
CREATE TABLE table_name (
    column1_name data_type [constraints],
    column2_name data_type [constraints],
    ...
);
```

- **`table_name`**: The name of the table you want to create.
- **`column_name`**: The name of each column in the table.
- **`data_type`**: The type of data the column will store (e.g., `INTEGER`, `VARCHAR`, `DATE`).
- **`constraints`**: Optional rules for the column (e.g., `PRIMARY KEY`, `NOT NULL`, `UNIQUE`).

---

### **Example of a Simple `CREATE TABLE` Statement**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INTEGER CHECK (Age >= 18),
    Department VARCHAR(50),
    HireDate DATE DEFAULT CURRENT_DATE
);
```

#### **Explanation of the Example**:

- **`EmployeeID SERIAL PRIMARY KEY`**: Auto-incrementing integer serving as the unique identifier for each employee.
- **`Name VARCHAR(100) NOT NULL`**: Name field with a maximum of 100 characters, required (`NOT NULL`).
- **`Age INTEGER CHECK (Age >= 18)`**: Age field restricted to values 18 or older.
- **`Department VARCHAR(50)`**: Department field with a maximum of 50 characters.
- **`HireDate DATE DEFAULT CURRENT_DATE`**: Hire date field with the current date as the default value.

---

### **Common Data Types**

| **Data Type**       | **Description**                                     |
| ------------------- | --------------------------------------------------- |
| **`INTEGER`**       | Whole numbers                                       |
| **`BIGINT`**        | Large whole numbers                                 |
| **`VARCHAR(n)`**    | Variable-length string, max `n` chars               |
| **`TEXT`**          | Unlimited-length string                             |
| **`BOOLEAN`**       | True/False values                                   |
| **`DATE`**          | Calendar date                                       |
| **`TIMESTAMP`**     | Date and time                                       |
| **`DECIMAL(p, s)`** | Fixed-point number with precision `p` and scale `s` |

---

### **Common Constraints**

| **Constraint**    | **Description**                               |
| ----------------- | --------------------------------------------- |
| **`PRIMARY KEY`** | Uniquely identifies each row in the table     |
| **`NOT NULL`**    | Ensures the column cannot have `NULL` values  |
| **`UNIQUE`**      | Ensures all values in the column are unique   |
| **`CHECK`**       | Ensures values meet a specified condition     |
| **`DEFAULT`**     | Provides a default value if none is specified |
| **`FOREIGN KEY`** | Establishes a relationship between tables     |

---

### **Using `CREATE TABLE IF NOT EXISTS`**

This ensures the table is only created if it doesn’t already exist.

#### **Syntax**:

```sql
CREATE TABLE IF NOT EXISTS table_name (
    column1_name data_type,
    column2_name data_type
);
```

#### **Example**:

```sql
CREATE TABLE IF NOT EXISTS departments (
    DepartmentID SERIAL PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);
```

---

### **Adding Constraints**

#### **1. Primary Key**

```sql
CREATE TABLE customers (
    CustomerID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);
```

#### **2. Foreign Key**

```sql
CREATE TABLE orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INTEGER REFERENCES customers(CustomerID),
    OrderDate DATE DEFAULT CURRENT_DATE
);
```

#### **3. Unique Constraint**

```sql
CREATE TABLE users (
    UserID SERIAL PRIMARY KEY,
    Email VARCHAR(150) UNIQUE
);
```

#### **4. Check Constraint**

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    Price DECIMAL(10, 2) CHECK (Price > 0)
);
```

---

### **Full Example with Multiple Constraints**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE,
    Age INTEGER CHECK (Age >= 18),
    DepartmentID INTEGER REFERENCES departments(DepartmentID),
    HireDate DATE DEFAULT CURRENT_DATE
);
```

---

### **Verifying Table Creation**

After creating a table, you can verify it using:

```sql
\d table_name
```

Or list all tables in the database:

```sql
\dt
```

---

### **Exercises**

#### **Exercise 1: Create a `products` Table**

Create a `products` table with the following columns:

- `ProductID` (Auto-increment primary key)
- `ProductName` (Variable-length string, max 100 characters, not null)
- `Price` (Decimal with 2 decimal places, must be greater than 0)
- `Stock` (Integer, must be non-negative)

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0),
    Stock INTEGER CHECK (Stock >= 0)
);
```

#### **Exercise 2: Create a `customers` Table**

Create a `customers` table with:

- `CustomerID` (Auto-increment primary key)
- `Name` (Variable-length string, max 100 characters, not null)
- `Email` (Unique, max 150 characters)

```sql
CREATE TABLE customers (
    CustomerID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE
);
```

---

### **Summary**

- The `CREATE TABLE` statement defines the structure of a new table.
- Use appropriate **data types** and **constraints** for each column.
- **`IF NOT EXISTS`** prevents errors if the table already exists.

Let me know if you need more examples or explanations! 😊
