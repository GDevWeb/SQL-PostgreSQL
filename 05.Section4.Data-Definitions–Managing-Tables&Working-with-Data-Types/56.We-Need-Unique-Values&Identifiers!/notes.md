# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **56. We Need Unique Values & Identifiers in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614442#overview)
- [schema- the role & importance of Unique IDs](img/schema-the-role&importance-UUID.png)
- [schema- setting unique IDs & primary key](img/schema-setting-unique-ids&primary-key.png)

---

### **Overview**

Ensuring that data remains unique and properly identified is essential in database design. PostgreSQL offers several mechanisms to maintain unique values and identifiers, such as:

1. **Primary Keys**
2. **Unique Constraints**
3. **Serial & Identity Columns**
4. **UUIDs (Universally Unique Identifiers)**

---

### **1. Primary Keys**

A **Primary Key** uniquely identifies each row in a table. It enforces uniqueness and **cannot contain `NULL` values**.

#### **Creating a Table with a Primary Key**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL
);
```

- **`EmployeeID SERIAL PRIMARY KEY`**: Auto-incrementing unique identifier.
- A table can only have **one primary key**.

#### **Inserting Data**

```sql
INSERT INTO employees (FullName, Email)
VALUES ('Alice Johnson', 'alice.johnson@example.com');
```

#### **Attempt to Insert a Duplicate Primary Key**

```sql
INSERT INTO employees (EmployeeID, FullName, Email)
VALUES (1, 'Bob Smith', 'bob.smith@example.com');
```

**Error**:

```
ERROR: duplicate key value violates unique constraint "employees_pkey"
```

---

### **2. Unique Constraints**

A **Unique Constraint** ensures that values in a specific column (or group of columns) are unique, but allows `NULL` values (unless combined with `NOT NULL`).

#### **Creating a Table with a Unique Constraint**

```sql
CREATE TABLE users (
    UserID SERIAL PRIMARY KEY,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Email VARCHAR(150) UNIQUE
);
```

- **`Username VARCHAR(50) NOT NULL UNIQUE`**: The `Username` column must have unique values.
- **`Email VARCHAR(150) UNIQUE`**: The `Email` column can be `NULL`, but if a value is provided, it must be unique.

#### **Inserting Data**

```sql
INSERT INTO users (Username, Email)
VALUES ('johndoe', 'john.doe@example.com');
```

#### **Attempt to Insert a Duplicate Username**

```sql
INSERT INTO users (Username, Email)
VALUES ('johndoe', 'jane.doe@example.com');
```

**Error**:

```
ERROR: duplicate key value violates unique constraint "users_username_key"
```

---

### **3. Adding a Unique Constraint to an Existing Table**

#### **Add a Unique Constraint**

```sql
ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE (Email);
```

#### **Drop a Unique Constraint**

```sql
ALTER TABLE users
DROP CONSTRAINT unique_email;
```

---

### **4. Serial & Identity Columns**

In PostgreSQL, you can use **`SERIAL`** or **`GENERATED ALWAYS AS IDENTITY`** to create auto-incrementing identifiers.

#### **Using `SERIAL`**

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL
);
```

- **`ProductID SERIAL`**: Auto-incrementing integer starting from 1.

#### **Using `IDENTITY`**

```sql
CREATE TABLE orders (
    OrderID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    OrderDate DATE NOT NULL DEFAULT CURRENT_DATE
);
```

- **`GENERATED ALWAYS AS IDENTITY`**: Newer and more SQL-standard way to define auto-incrementing columns.

---

### **5. Using UUIDs as Identifiers**

**UUIDs (Universally Unique Identifiers)** are 128-bit unique identifiers. They are useful for distributed systems where unique IDs need to be generated independently.

#### **Enable the UUID Extension**

```sql
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
```

#### **Create a Table with UUID**

```sql
CREATE TABLE sessions (
    SessionID UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    UserID INT NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### **Insert Data**

```sql
INSERT INTO sessions (UserID)
VALUES (123);
```

#### **Query the Table**

```sql
SELECT * FROM sessions;
```

**Sample Output**:

| SessionID                            | UserID | CreatedAt           |
| ------------------------------------ | ------ | ------------------- |
| 550e8400-e29b-41d4-a716-446655440000 | 123    | 2024-06-01 12:00:00 |

---

### **6. Combining Constraints**

You can combine **Primary Keys**, **Unique Constraints**, and **Default Values** for robust data integrity.

#### **Example**

```sql
CREATE TABLE customers (
    CustomerID SERIAL PRIMARY KEY,
    Email VARCHAR(150) UNIQUE NOT NULL,
    JoinDate DATE DEFAULT CURRENT_DATE
);
```

- **`CustomerID SERIAL PRIMARY KEY`**: Auto-incrementing primary key.
- **`Email UNIQUE NOT NULL`**: Email must be unique and cannot be `NULL`.

---

### **Exercises**

#### **Exercise 1: Create a `students` Table**

Create a `students` table with:

- `StudentID` (Auto-increment primary key)
- `Email` (`VARCHAR(150)`, unique, not null)
- `EnrollmentDate` (`DATE`, default to current date)

```sql
CREATE TABLE students (
    StudentID SERIAL PRIMARY KEY,
    Email VARCHAR(150) UNIQUE NOT NULL,
    EnrollmentDate DATE DEFAULT CURRENT_DATE
);
```

#### **Exercise 2: Insert Data**

Insert valid student data:

```sql
INSERT INTO students (Email)
VALUES ('alice.green@example.com');
```

Attempt to insert a duplicate email:

```sql
INSERT INTO students (Email)
VALUES ('alice.green@example.com');
```

#### **Exercise 3: Create a `products` Table with UUID**

Create a `products` table using UUIDs:

```sql
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE products (
    ProductID UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0)
);
```

Insert a product:

```sql
INSERT INTO products (ProductName, Price)
VALUES ('Wireless Mouse', 25.99);
```

---

### **Summary**

- **Primary Keys** uniquely identify rows and cannot contain `NULL` values.
- **Unique Constraints** enforce uniqueness but allow `NULL` unless combined with `NOT NULL`.
- **`SERIAL`** and **`IDENTITY`** columns provide auto-incrementing integers.
- **UUIDs** are ideal for globally unique identifiers.
- Combine constraints for robust data integrity.

Let me know if you need further clarification or additional examples! 😊
