# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **58. Working with Auto-Incrementing IDs & Primary Keys in PostgreSQL and MySQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614446#overview)

---

### **Overview**

Auto-incrementing IDs and primary keys are essential for uniquely identifying each row in a database table. In this lesson, we'll explore how to work with auto-incrementing IDs and primary keys in both **PostgreSQL** and **MySQL**.

---

### **1. Auto-Incrementing IDs in PostgreSQL**

In **PostgreSQL**, you can create auto-incrementing IDs using:

- **`SERIAL`** (for `INTEGER`)
- **`BIGSERIAL`** (for `BIGINT`)
- **`SMALLSERIAL`** (for `SMALLINT`)
- **`IDENTITY`** (SQL-standard method)

#### **Example: Using `SERIAL`**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Position VARCHAR(50)
);
```

- **`SERIAL`** automatically creates an `INTEGER` column with an associated sequence.
- **`PRIMARY KEY`** ensures each ID is unique.

#### **Inserting Data**

```sql
INSERT INTO employees (FullName, Position)
VALUES
    ('Alice Johnson', 'Developer'),
    ('Bob Smith', 'Manager');
```

#### **Query the Table**

```sql
SELECT * FROM employees;
```

**Result:**

| EmployeeID | FullName      | Position  |
| ---------- | ------------- | --------- |
| 1          | Alice Johnson | Developer |
| 2          | Bob Smith     | Manager   |

---

### **2. Auto-Incrementing IDs in MySQL**

In **MySQL**, you can create auto-incrementing IDs using:

- **`AUTO_INCREMENT`** with an integer data type (`TINYINT`, `SMALLINT`, `INT`, `BIGINT`).

#### **Example: Using `AUTO_INCREMENT`**

```sql
CREATE TABLE employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Position VARCHAR(50)
);
```

- **`AUTO_INCREMENT`** generates an auto-incrementing integer.
- **`PRIMARY KEY`** ensures uniqueness.

#### **Inserting Data**

```sql
INSERT INTO employees (FullName, Position)
VALUES
    ('Alice Johnson', 'Developer'),
    ('Bob Smith', 'Manager');
```

#### **Query the Table**

```sql
SELECT * FROM employees;
```

**Result:**

| EmployeeID | FullName      | Position  |
| ---------- | ------------- | --------- |
| 1          | Alice Johnson | Developer |
| 2          | Bob Smith     | Manager   |

---

### **3. Using `BIGSERIAL` and `BIGINT AUTO_INCREMENT`**

When dealing with a large number of rows, use **`BIGSERIAL`** in PostgreSQL or **`BIGINT AUTO_INCREMENT`** in MySQL.

#### **PostgreSQL Example**

```sql
CREATE TABLE orders (
    OrderID BIGSERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Quantity INT
);
```

#### **MySQL Example**

```sql
CREATE TABLE orders (
    OrderID BIGINT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100),
    Quantity INT
);
```

---

### **4. Resetting Auto-Increment Sequences**

#### **PostgreSQL**

Reset the sequence to a specific value:

```sql
ALTER SEQUENCE employees_employeeid_seq RESTART WITH 100;
```

#### **MySQL**

Reset the auto-increment value:

```sql
ALTER TABLE employees AUTO_INCREMENT = 100;
```

---

### **5. Best Practices for Auto-Incrementing IDs**

1. **Use Auto-Increment for Primary Keys**:

   - Ensures each row has a unique identifier.

2. **Consistent Data Types**:

   - Use `SERIAL`/`BIGSERIAL` for PostgreSQL and `INT AUTO_INCREMENT`/`BIGINT AUTO_INCREMENT` for MySQL.

3. **Avoid Using Business Data as Primary Keys**:

   - Auto-incremented IDs are less prone to changes compared to business-related data.

4. **Foreign Key Relationships**:
   - Ensure that foreign key columns match the data type of the primary key.

---

### **Exercises**

#### **Exercise 1: Create a `customers` Table**

1. Create a `customers` table with an auto-incrementing primary key:
   - `CustomerID` (Auto-incrementing primary key)
   - `Name` (`VARCHAR(100)`, not null)
   - `Email` (`VARCHAR(150)`)

**PostgreSQL:**

```sql
CREATE TABLE customers (
    CustomerID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150)
);
```

**MySQL:**

```sql
CREATE TABLE customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150)
);
```

2. Insert sample data:

```sql
INSERT INTO customers (Name, Email)
VALUES
    ('Alice Green', 'alice.green@example.com'),
    ('Bob White', 'bob.white@example.com');
```

3. Query the table:

```sql
SELECT * FROM customers;
```

---

#### **Exercise 2: Create an `orders` Table with `BIGSERIAL` or `BIGINT`**

1. Create an `orders` table with:
   - `OrderID` (Auto-incrementing primary key)
   - `CustomerID` (Integer, references `customers`)
   - `OrderDate` (Default to the current date)

**PostgreSQL:**

```sql
CREATE TABLE orders (
    OrderID BIGSERIAL PRIMARY KEY,
    CustomerID INT REFERENCES customers(CustomerID),
    OrderDate DATE DEFAULT CURRENT_DATE
);
```

**MySQL:**

```sql
CREATE TABLE orders (
    OrderID BIGINT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);
```

2. Insert sample data:

```sql
INSERT INTO orders (CustomerID)
VALUES (1), (2);
```

3. Query the table:

```sql
SELECT * FROM orders;
```

---

### **Summary**

- **PostgreSQL**: Use `SERIAL` for `INTEGER` auto-incrementing IDs and `BIGSERIAL` for `BIGINT`.
- **MySQL**: Use `AUTO_INCREMENT` with `INT` or `BIGINT` for auto-incrementing IDs.
- Auto-incrementing IDs ensure each row has a **unique identifier**.
- Use **primary keys** to enforce uniqueness and enable relationships between tables.

Let me know if you need further clarification or additional examples! 😊
