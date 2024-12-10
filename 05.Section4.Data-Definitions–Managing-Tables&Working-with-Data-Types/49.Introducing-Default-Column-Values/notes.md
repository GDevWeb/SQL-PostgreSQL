# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **49. Introducing Default Column Values in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614044#overview)

---

#### **Overview**

In PostgreSQL, you can define **default values** for table columns. A default value is automatically assigned when no value is provided during an `INSERT` operation. This helps ensure data consistency and simplifies data insertion by reducing the need to specify values explicitly for every column.

---

### **Syntax for Default Column Values**

```sql
CREATE TABLE table_name (
    column_name data_type DEFAULT default_value
);
```

- **`default_value`** can be a fixed value, a function (e.g., `CURRENT_TIMESTAMP`), or an expression.
- If a default value is not defined, `NULL` is used unless the column has a `NOT NULL` constraint.

---

### **Examples of Default Values**

Let's explore different ways to set default values in PostgreSQL.

---

#### **1. Default Value for a Text Column**

Create a table with a text column that has a default value.

```sql
CREATE TABLE users (
    UserID SERIAL PRIMARY KEY,
    Username VARCHAR(100) NOT NULL,
    Status VARCHAR(20) DEFAULT 'Active'
);
```

#### **Insert Data Without Providing a `Status`**

```sql
INSERT INTO users (Username)
VALUES ('Alice Johnson');
```

#### **Result**

```sql
SELECT * FROM users;
```

| UserID | Username      | Status |
| ------ | ------------- | ------ |
| 1      | Alice Johnson | Active |

---

#### **2. Default Value for a Numeric Column**

Create a table with a numeric column that has a default value.

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Quantity INTEGER DEFAULT 0
);
```

#### **Insert Data Without Providing a `Quantity`**

```sql
INSERT INTO products (ProductName)
VALUES ('Laptop');
```

#### **Result**

```sql
SELECT * FROM products;
```

| ProductID | ProductName | Quantity |
| --------- | ----------- | -------- |
| 1         | Laptop      | 0        |

---

#### **3. Default Value for a Timestamp Column**

Use `CURRENT_TIMESTAMP` to set the current date and time as the default value.

```sql
CREATE TABLE orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### **Insert Data Without Providing an `OrderDate`**

```sql
INSERT INTO orders (CustomerName)
VALUES ('John Doe');
```

#### **Result**

```sql
SELECT * FROM orders;
```

| OrderID | CustomerName | OrderDate           |
| ------- | ------------ | ------------------- |
| 1       | John Doe     | 2024-06-01 14:30:00 |

---

#### **4. Default Value with Expressions**

You can use expressions to define dynamic default values.

```sql
CREATE TABLE tasks (
    TaskID SERIAL PRIMARY KEY,
    TaskName VARCHAR(100) NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DueDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP + INTERVAL '7 days'
);
```

#### **Insert Data Without Providing `CreatedAt` or `DueDate`**

```sql
INSERT INTO tasks (TaskName)
VALUES ('Complete project report');
```

#### **Result**

```sql
SELECT * FROM tasks;
```

| TaskID | TaskName                | CreatedAt           | DueDate             |
| ------ | ----------------------- | ------------------- | ------------------- |
| 1      | Complete project report | 2024-06-01 14:45:00 | 2024-06-08 14:45:00 |

---

### **Modifying Default Values in an Existing Table**

You can add or change default values using the `ALTER TABLE` statement.

#### **Add a Default Value**

```sql
ALTER TABLE users
ALTER COLUMN Status SET DEFAULT 'Pending';
```

#### **Remove a Default Value**

```sql
ALTER TABLE users
ALTER COLUMN Status DROP DEFAULT;
```

---

### **Checking Default Values in a Table**

You can check default values by inspecting the table schema.

#### **Using `\d` in `psql`**

```sql
\d users
```

#### **Example Output**

```
   Column   |          Type          |           Modifiers
------------+------------------------+--------------------------------
 UserID     | integer                | not null default nextval('users_userid_seq'::regclass)
 Username   | character varying(100) | not null
 Status     | character varying(20)  | default 'Pending'
```

---

### **Best Practices for Default Values**

1. **Use Meaningful Defaults**:

   - Choose defaults that make sense for the context (e.g., `Status` defaulting to `'Active'`).

2. **Simplify Data Entry**:

   - Use defaults to reduce the need to specify values for frequently recurring data (e.g., `OrderDate` defaulting to `CURRENT_TIMESTAMP`).

3. **Ensure Consistency**:

   - Set defaults to maintain consistent data when no explicit value is provided.

4. **Combine with Constraints**:
   - Use defaults with `NOT NULL` constraints to ensure columns always have meaningful values.

---

### **Exercises**

#### **Exercise 1: Create a `members` Table**

Create a `members` table with the following columns:

- `MemberID` (Auto-increment primary key)
- `Name` (`VARCHAR(100)`, not null)
- `JoinDate` (`TIMESTAMP`, default to the current timestamp)
- `MembershipStatus` (`VARCHAR(20)`, default `'Active'`)

```sql
CREATE TABLE members (
    MemberID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    JoinDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    MembershipStatus VARCHAR(20) DEFAULT 'Active'
);
```

#### **Exercise 2: Insert Data**

Insert the following members:

1. **Name**: "Alice Green"
2. **Name**: "Bob White", **MembershipStatus**: "Pending"

```sql
INSERT INTO members (Name) VALUES ('Alice Green');
INSERT INTO members (Name, MembershipStatus) VALUES ('Bob White', 'Pending');
```

#### **Exercise 3: Query the `members` Table**

Retrieve all members.

```sql
SELECT * FROM members;
```

---

### **Summary**

- **Default values** simplify data entry and ensure data consistency.
- Use `DEFAULT` with **fixed values**, **functions** like `CURRENT_TIMESTAMP`, or **expressions**.
- You can **add** or **remove** default values using the `ALTER TABLE` statement.
- Always choose meaningful defaults to enhance data integrity and usability.

Let me know if you need further explanations or additional examples! 😊
