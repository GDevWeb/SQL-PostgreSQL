# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **41. Working with Enums & Finishing Table Creation in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614026#overview)
- [schema - enums](img/enums.png)

---

#### **Overview**

In PostgreSQL, an **enum (enumerated) type** is a data type that allows you to define a set of predefined values for a column. This is useful for situations where a column should only contain a specific list of values, such as statuses, categories, or types.

Enums help enforce **data integrity** and make your database schema more readable and maintainable.

---

### **Creating an Enum Type**

Before using an enum in a table, you need to **define the enum type**.

#### **Syntax**

```sql
CREATE TYPE type_name AS ENUM ('value1', 'value2', 'value3');
```

#### **Example**

Create an enum for employee roles:

```sql
CREATE TYPE role_type AS ENUM ('Manager', 'Developer', 'Designer', 'QA', 'HR');
```

---

### **Using Enums in Table Creation**

You can use the enum type as the data type for a table column.

#### **Example Table with an Enum Column**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Role role_type NOT NULL,
    HireDate DATE DEFAULT CURRENT_DATE
);
```

In this example:

- **`Role`** is restricted to the values defined in `role_type`: `'Manager'`, `'Developer'`, `'Designer'`, `'QA'`, `'HR'`.

---

### **Inserting Data into a Table with Enums**

To insert data into a table with an enum column, use one of the predefined enum values.

#### **Example Insertion**

```sql
INSERT INTO employees (Name, Role, HireDate)
VALUES ('Alice Johnson', 'Developer', '2024-06-01');
```

#### **Inserting Multiple Rows**

```sql
INSERT INTO employees (Name, Role, HireDate)
VALUES
    ('Bob Smith', 'Manager', '2024-06-15'),
    ('Catherine Lee', 'QA', '2024-06-20');
```

---

### **Querying Data with Enum Columns**

You can query data based on enum values like any other column.

#### **Example Query**

```sql
SELECT * FROM employees WHERE Role = 'Developer';
```

---

### **Updating Enum Values in a Table**

You can update the enum value in a row like a regular column.

#### **Example Update**

```sql
UPDATE employees
SET Role = 'Manager'
WHERE Name = 'Alice Johnson';
```

---

### **Altering Enum Types**

If you need to add a new value to an existing enum type, use the `ALTER TYPE` statement.

#### **Syntax**

```sql
ALTER TYPE type_name ADD VALUE 'new_value';
```

#### **Example**

```sql
ALTER TYPE role_type ADD VALUE 'Intern';
```

---

### **Combining Enums with Other Constraints**

You can combine enum columns with other constraints, such as `NOT NULL`, `UNIQUE`, and `CHECK`.

#### **Example Table with Constraints**

```sql
CREATE TABLE tasks (
    TaskID SERIAL PRIMARY KEY,
    TaskName VARCHAR(200) NOT NULL,
    Status task_status NOT NULL,
    DueDate DATE CHECK (DueDate >= CURRENT_DATE)
);
```

---

### **Completing Table Creation Example**

Let's put everything together by creating a table that uses multiple columns, constraints, and an enum.

#### **Step 1: Create an Enum for Task Statuses**

```sql
CREATE TYPE task_status AS ENUM ('Pending', 'In Progress', 'Completed', 'Blocked');
```

#### **Step 2: Create the `tasks` Table**

```sql
CREATE TABLE tasks (
    TaskID SERIAL PRIMARY KEY,
    TaskName VARCHAR(200) NOT NULL,
    Status task_status NOT NULL DEFAULT 'Pending',
    AssignedTo VARCHAR(100),
    DueDate DATE CHECK (DueDate >= CURRENT_DATE)
);
```

#### **Step 3: Insert Sample Data**

```sql
INSERT INTO tasks (TaskName, Status, AssignedTo, DueDate)
VALUES
    ('Develop feature X', 'In Progress', 'Alice Johnson', '2024-07-01'),
    ('Fix bug Y', 'Pending', 'Bob Smith', '2024-06-25'),
    ('Write documentation', 'Blocked', 'Catherine Lee', '2024-08-15');
```

#### **Step 4: Query the `tasks` Table**

```sql
SELECT * FROM tasks;
```

---

### **Best Practices for Using Enums**

1. **Use Enums for Fixed Sets of Values**:

   - Enums are great for columns with a limited set of predefined values (e.g., statuses, categories).

2. **Consider Future Changes**:

   - If you anticipate frequent changes to the set of allowed values, enums may not be the best choice. Consider using a separate lookup table instead.

3. **Naming Conventions**:

   - Use clear and descriptive names for enum types (e.g., `task_status`, `role_type`).

4. **Combining Constraints**:
   - Combine enums with constraints like `NOT NULL` and `DEFAULT` to enforce data integrity.

---

### **Exercises**

#### **Exercise 1: Create an Enum and Table**

1. Create an enum called `order_status` with the values `'Pending'`, `'Shipped'`, `'Delivered'`, and `'Cancelled'`.
2. Create a table `orders` with the following columns:
   - `OrderID` (Auto-increment primary key)
   - `CustomerName` (`VARCHAR(100)`, not null)
   - `Status` (`order_status`, default to `'Pending'`)
   - `OrderDate` (`DATE`, default to current date)

```sql
CREATE TYPE order_status AS ENUM ('Pending', 'Shipped', 'Delivered', 'Cancelled');

CREATE TABLE orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Status order_status DEFAULT 'Pending',
    OrderDate DATE DEFAULT CURRENT_DATE
);
```

#### **Exercise 2: Insert Data into `orders`**

Insert the following orders:

1. Customer: "John Doe", Status: "Shipped"
2. Customer: "Jane Smith", Status: "Pending"

```sql
INSERT INTO orders (CustomerName, Status)
VALUES
    ('John Doe', 'Shipped'),
    ('Jane Smith', 'Pending');
```

#### **Exercise 3: Query the `orders` Table**

Retrieve all orders with the status `'Pending'`.

```sql
SELECT * FROM orders WHERE Status = 'Pending';
```

---

### **Summary**

- **Enums** are useful for columns with a fixed set of values.
- Use the `CREATE TYPE` statement to define an enum.
- Enums help enforce data integrity and simplify schema design.
- Combine enums with constraints like `NOT NULL` and `DEFAULT` for more robust tables.

Let me know if you need any further explanations or additional examples! 😊
