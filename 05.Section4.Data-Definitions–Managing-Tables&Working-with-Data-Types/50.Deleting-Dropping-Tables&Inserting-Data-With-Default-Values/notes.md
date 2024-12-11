# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **50. Deleting (Dropping) Tables & Inserting Data with Default Values in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614048#overview)

---

#### **Part 1: Deleting (Dropping) Tables**

When you no longer need a table in your database, you can use the `DROP TABLE` statement to delete it. This operation **removes the table and all of its data permanently**, so use it with caution.

---

### **1. Basic Syntax of `DROP TABLE`**

```sql
DROP TABLE table_name;
```

- **`table_name`**: The name of the table you want to delete.

#### **Example**

```sql
DROP TABLE users;
```

---

### **2. Drop Table If It Exists**

To avoid errors if the table doesn't exist, use the `IF EXISTS` clause.

#### **Syntax**

```sql
DROP TABLE IF EXISTS table_name;
```

#### **Example**

```sql
DROP TABLE IF EXISTS users;
```

This ensures that no error is thrown if the `users` table does not exist.

---

### **3. Dropping Multiple Tables**

You can drop multiple tables in a single statement.

#### **Example**

```sql
DROP TABLE IF EXISTS users, orders, products;
```

---

### **4. Dropping Tables with Dependencies**

If a table has foreign key constraints or other dependencies, you can use the `CASCADE` option to drop the table and its dependent objects.

#### **Syntax**

```sql
DROP TABLE table_name CASCADE;
```

#### **Example**

```sql
DROP TABLE orders CASCADE;
```

This will drop the `orders` table and any dependent constraints or views.

---

### **Part 2: Inserting Data with Default Values**

When a table has columns with default values, you can insert data without explicitly specifying those columns. The default values will automatically be applied.

---

### **Example Table with Default Values**

Let’s create a `products` table with default values.

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) DEFAULT 0.00,
    InStock BOOLEAN DEFAULT TRUE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

---

### **Inserting Data Using Default Values**

#### **1. Insert Data Without Specifying Default Columns**

```sql
INSERT INTO products (ProductName)
VALUES ('Laptop');
```

- **Default Values Applied**:
  - `Price`: `0.00`
  - `InStock`: `TRUE`
  - `CreatedAt`: Current timestamp

#### **2. Insert Data with Some Default Values**

```sql
INSERT INTO products (ProductName, Price)
VALUES ('Smartphone', 499.99);
```

- **Default Values Applied**:
  - `InStock`: `TRUE`
  - `CreatedAt`: Current timestamp

#### **3. Insert Data Explicitly Using `DEFAULT`**

```sql
INSERT INTO products (ProductName, Price, InStock, CreatedAt)
VALUES ('Tablet', DEFAULT, DEFAULT, DEFAULT);
```

This will use the default values for `Price`, `InStock`, and `CreatedAt`.

---

### **Query the `products` Table**

```sql
SELECT * FROM products;
```

**Sample Output**:

| ProductID | ProductName | Price  | InStock | CreatedAt           |
| --------- | ----------- | ------ | ------- | ------------------- |
| 1         | Laptop      | 0.00   | TRUE    | 2024-06-01 14:30:00 |
| 2         | Smartphone  | 499.99 | TRUE    | 2024-06-01 14:35:00 |
| 3         | Tablet      | 0.00   | TRUE    | 2024-06-01 14:40:00 |

---

### **Combining `DROP TABLE` and Inserting Data**

#### **Step 1: Drop the Table if It Exists**

```sql
DROP TABLE IF EXISTS products;
```

#### **Step 2: Recreate the `products` Table**

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) DEFAULT 0.00,
    InStock BOOLEAN DEFAULT TRUE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### **Step 3: Insert Data**

```sql
INSERT INTO products (ProductName)
VALUES ('Headphones');

INSERT INTO products (ProductName, Price)
VALUES ('Camera', 299.99);
```

#### **Step 4: Query the Table**

```sql
SELECT * FROM products;
```

**Output**:

| ProductID | ProductName | Price  | InStock | CreatedAt           |
| --------- | ----------- | ------ | ------- | ------------------- |
| 1         | Headphones  | 0.00   | TRUE    | 2024-06-01 15:00:00 |
| 2         | Camera      | 299.99 | TRUE    | 2024-06-01 15:05:00 |

---

### **Exercises**

#### **Exercise 1: Drop and Recreate a `members` Table**

1. Drop the `members` table if it exists.
2. Create a `members` table with the following columns:
   - `MemberID` (Auto-increment primary key)
   - `Name` (`VARCHAR(100)`, not null)
   - `JoinDate` (`TIMESTAMP`, default to the current timestamp)
   - `MembershipStatus` (`VARCHAR(20)`, default `'Active'`)

```sql
DROP TABLE IF EXISTS members;

CREATE TABLE members (
    MemberID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    JoinDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    MembershipStatus VARCHAR(20) DEFAULT 'Active'
);
```

#### **Exercise 2: Insert Data with Default Values**

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

- **`DROP TABLE`** deletes a table and its data. Use `IF EXISTS` to avoid errors.
- **Default values** simplify data insertion by automatically filling in predefined values.
- Use `DEFAULT` in `INSERT` statements to explicitly apply default values.
- Combine `DROP TABLE` and `CREATE TABLE` for table management during development.

Let me know if you need further clarification or additional examples! 😊
