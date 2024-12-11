# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **63. Creating Generated Columns in PostgreSQL and MySQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614458#overview)
- ***

#### **Overview**

**Generated Columns** (also known as computed or virtual columns) are columns in a table where the values are automatically computed based on expressions or other columns. They help simplify queries and maintain consistent derived values without manual updates.

Generated columns can be:

1. **Stored**: The computed value is physically stored in the database.
2. **Virtual**: The computed value is calculated on the fly when queried (only supported in MySQL).

---

### **1. Creating Generated Columns in PostgreSQL**

In **PostgreSQL**, generated columns are **always stored** (computed and stored in the table).

#### **Syntax**

```sql
CREATE TABLE table_name (
    column1 data_type,
    column2 data_type,
    generated_column data_type GENERATED ALWAYS AS (expression) STORED
);
```

#### **Example: Calculating Full Name**

```sql
CREATE TABLE users (
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    FullName VARCHAR(100) GENERATED ALWAYS AS (FirstName || ' ' || LastName) STORED
);
```

#### **Insert Data**

```sql
INSERT INTO users (FirstName, LastName) VALUES ('Alice', 'Johnson');
```

#### **Query the Table**

```sql
SELECT * FROM users;
```

**Output:**

| FirstName | LastName | FullName      |
| --------- | -------- | ------------- |
| Alice     | Johnson  | Alice Johnson |

---

#### **Rules for Generated Columns in PostgreSQL**

1. **Stored Only**: PostgreSQL only supports stored generated columns.
2. **Non-Editable**: You cannot insert or update values directly in a generated column.
3. **Expressions**: Can use any valid expression, including mathematical operations, string concatenation, and functions.

---

### **2. Creating Generated Columns in MySQL**

In **MySQL**, generated columns can be either **stored** or **virtual**.

#### **Syntax**

```sql
CREATE TABLE table_name (
    column1 data_type,
    column2 data_type,
    generated_column data_type GENERATED ALWAYS AS (expression) [VIRTUAL | STORED]
);
```

- **`VIRTUAL`** (default): The value is computed on demand and not stored.
- **`STORED`**: The value is computed and stored physically in the table.

---

#### **Example: Calculating Area of a Rectangle**

```sql
CREATE TABLE rectangles (
    Length DECIMAL(10, 2),
    Width DECIMAL(10, 2),
    Area DECIMAL(10, 2) GENERATED ALWAYS AS (Length * Width) STORED
);
```

#### **Insert Data**

```sql
INSERT INTO rectangles (Length, Width) VALUES (5.5, 3.2);
```

#### **Query the Table**

```sql
SELECT * FROM rectangles;
```

**Output:**

| Length | Width | Area |
| ------ | ----- | ---- |
| 5.5    | 3.2   | 17.6 |

---

#### **Virtual Generated Columns Example**

```sql
CREATE TABLE products (
    Price DECIMAL(10, 2),
    TaxRate DECIMAL(5, 2),
    PriceWithTax DECIMAL(10, 2) GENERATED ALWAYS AS (Price + (Price * TaxRate)) VIRTUAL
);
```

#### **Insert Data**

```sql
INSERT INTO products (Price, TaxRate) VALUES (100, 0.2);
```

#### **Query the Table**

```sql
SELECT Price, TaxRate, PriceWithTax FROM products;
```

**Output:**

| Price | TaxRate | PriceWithTax |
| ----- | ------- | ------------ |
| 100   | 0.2     | 120.00       |

---

### **3. Modifying Tables to Add Generated Columns**

You can add generated columns to existing tables using the `ALTER TABLE` statement.

#### **PostgreSQL Example**

```sql
ALTER TABLE users
ADD COLUMN Initials VARCHAR(5) GENERATED ALWAYS AS (LEFT(FirstName, 1) || LEFT(LastName, 1)) STORED;
```

#### **MySQL Example**

```sql
ALTER TABLE products
ADD COLUMN DiscountedPrice DECIMAL(10, 2) GENERATED ALWAYS AS (Price * 0.9) STORED;
```

---

### **4. Dropping Generated Columns**

#### **PostgreSQL**

```sql
ALTER TABLE users DROP COLUMN FullName;
```

#### **MySQL**

```sql
ALTER TABLE products DROP COLUMN DiscountedPrice;
```

---

### **5. Use Cases for Generated Columns**

1. **Derived Data**:
   - Automatically calculate fields like totals, taxes, or areas based on other columns.
2. **Concatenated Fields**:

   - Create full names from first and last names.

3. **Data Transformation**:

   - Transform or normalize data (e.g., converting text to uppercase).

4. **Simplifying Queries**:
   - Avoid repetitive calculations in queries by storing derived values.

---

### **Exercises**

#### **Exercise 1: Create a Table with Generated Columns**

Create a `sales` table to store product prices and sales tax. Add a generated column for the total price.

**PostgreSQL**:

```sql
CREATE TABLE sales (
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    TaxRate DECIMAL(5, 2),
    TotalPrice DECIMAL(10, 2) GENERATED ALWAYS AS (Price + (Price * TaxRate)) STORED
);
```

**MySQL**:

```sql
CREATE TABLE sales (
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    TaxRate DECIMAL(5, 2),
    TotalPrice DECIMAL(10, 2) GENERATED ALWAYS AS (Price + (Price * TaxRate)) VIRTUAL
);
```

#### **Insert Data**

```sql
INSERT INTO sales (ProductName, Price, TaxRate)
VALUES ('Laptop', 1000, 0.15);
```

#### **Query the Table**

```sql
SELECT * FROM sales;
```

---

#### **Exercise 2: Add a Generated Column to an Existing Table**

Add a `FullName` column to the `users` table.

**PostgreSQL**:

```sql
ALTER TABLE users
ADD COLUMN FullName VARCHAR(100) GENERATED ALWAYS AS (FirstName || ' ' || LastName) STORED;
```

**MySQL**:

```sql
ALTER TABLE users
ADD COLUMN FullName VARCHAR(100) GENERATED ALWAYS AS (CONCAT(FirstName, ' ', LastName)) VIRTUAL;
```

---

### **Summary**

- **Generated Columns** automatically compute values based on expressions.
- **PostgreSQL** supports only **stored** generated columns.
- **MySQL** supports both **virtual** and **stored** generated columns.
- Generated columns simplify data handling and ensure consistent derived values.

Let me know if you need further clarification or more examples! 😊
