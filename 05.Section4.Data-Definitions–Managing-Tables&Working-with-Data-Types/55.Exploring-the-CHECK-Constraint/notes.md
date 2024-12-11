# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **55. Exploring the `CHECK` Constraint in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614438#overview)

---

#### **Overview**

The **`CHECK`** constraint in PostgreSQL is used to enforce rules on the values that can be stored in a column. It ensures that data meets specified conditions before it is inserted or updated. If the data violates the constraint, PostgreSQL raises an error.

---

### **1. Syntax of `CHECK` Constraint**

#### **During Table Creation**

```sql
CREATE TABLE table_name (
    column_name data_type CHECK (condition)
);
```

#### **Adding to an Existing Table**

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name CHECK (condition);
```

- **`condition`**: The rule that data must satisfy.

---

### **2. Examples of `CHECK` Constraints**

#### **Example 1: Creating a Table with `CHECK` Constraint**

Create a `products` table where the `Price` must be greater than `0`.

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0)
);
```

#### **Inserting Valid Data**

```sql
INSERT INTO products (ProductName, Price)
VALUES ('Laptop', 999.99);
```

#### **Inserting Invalid Data**

```sql
INSERT INTO products (ProductName, Price)
VALUES ('Mouse', -5.00);
```

**Error**:

```
ERROR:  new row for relation "products" violates check constraint "products_price_check"
DETAIL:  Failing row contains (2, Mouse, -5.00).
```

---

#### **Example 2: Multiple `CHECK` Constraints**

Create a `students` table where:

1. The `Age` must be at least `18`.
2. The `Grade` must be between `0` and `100`.

```sql
CREATE TABLE students (
    StudentID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age >= 18),
    Grade INT CHECK (Grade >= 0 AND Grade <= 100)
);
```

#### **Inserting Valid Data**

```sql
INSERT INTO students (Name, Age, Grade)
VALUES ('Alice Johnson', 20, 85);
```

#### **Inserting Invalid Data**

```sql
INSERT INTO students (Name, Age, Grade)
VALUES ('Bob Smith', 17, 110);
```

**Error**:

```
ERROR:  new row for relation "students" violates check constraint "students_age_check"
DETAIL:  Failing row contains (2, Bob Smith, 17, 110).
```

---

### **3. Naming `CHECK` Constraints**

You can provide custom names for `CHECK` constraints to make error messages more informative.

#### **Example**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Salary DECIMAL(10, 2),
    CONSTRAINT salary_positive CHECK (Salary > 0)
);
```

---

### **4. Adding a `CHECK` Constraint to an Existing Table**

#### **Example Table**

```sql
CREATE TABLE orders (
    OrderID SERIAL PRIMARY KEY,
    Quantity INT
);
```

#### **Add a `CHECK` Constraint**

Ensure the `Quantity` is at least `1`.

```sql
ALTER TABLE orders
ADD CONSTRAINT quantity_positive CHECK (Quantity >= 1);
```

#### **Inserting Invalid Data**

```sql
INSERT INTO orders (Quantity)
VALUES (0);
```

**Error**:

```
ERROR:  new row for relation "orders" violates check constraint "quantity_positive"
DETAIL:  Failing row contains (1, 0).
```

---

### **5. Dropping a `CHECK` Constraint**

You can remove a `CHECK` constraint using the `DROP CONSTRAINT` clause.

#### **Syntax**

```sql
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```

#### **Example**

```sql
ALTER TABLE orders
DROP CONSTRAINT quantity_positive;
```

---

### **6. Using Expressions in `CHECK` Constraints**

You can use more complex expressions in `CHECK` constraints.

#### **Example**

Create a `users` table where the `Password` must be at least `8` characters long.

```sql
CREATE TABLE users (
    UserID SERIAL PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    CHECK (LENGTH(Password) >= 8)
);
```

---

### **7. Combining Multiple Conditions**

You can combine multiple conditions within a single `CHECK` constraint.

#### **Example**

Create a `products` table where:

1. `Price` is greater than `0`.
2. `Stock` must be `0` or more.

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2),
    Stock INT,
    CHECK (Price > 0 AND Stock >= 0)
);
```

---

### **8. Querying `CHECK` Constraints**

You can check constraints on a table using the `pg_constraint` system catalog.

#### **Example**

List all constraints for the `products` table.

```sql
SELECT conname AS constraint_name, pg_get_constraintdef(oid) AS constraint_definition
FROM pg_constraint
WHERE conrelid = 'products'::regclass;
```

---

### **Exercises**

#### **Exercise 1: Create a `cars` Table**

Create a `cars` table with the following columns:

- `CarID` (Auto-increment primary key)
- `Model` (`VARCHAR(100)`, not null)
- `Year` (`INT`, must be between 1990 and the current year)

```sql
CREATE TABLE cars (
    CarID SERIAL PRIMARY KEY,
    Model VARCHAR(100) NOT NULL,
    Year INT CHECK (Year >= 1990 AND Year <= EXTRACT(YEAR FROM CURRENT_DATE))
);
```

#### **Exercise 2: Insert Valid and Invalid Data**

1. Insert a valid car:

   ```sql
   INSERT INTO cars (Model, Year) VALUES ('Toyota Corolla', 2015);
   ```

2. Insert an invalid car with a year before 1990:

   ```sql
   INSERT INTO cars (Model, Year) VALUES ('Oldsmobile', 1980);
   ```

#### **Exercise 3: Add a `CHECK` Constraint to an Existing Table**

Add a `CHECK` constraint to ensure the `Price` in the `products` table is at least `1.00`.

```sql
ALTER TABLE products
ADD CONSTRAINT price_minimum CHECK (Price >= 1.00);
```

---

### **Summary**

- The **`CHECK`** constraint enforces rules on column values to maintain data integrity.
- You can add `CHECK` constraints during table creation or using `ALTER TABLE`.
- Use **custom names** for constraints to improve readability.
- Remove constraints with the `DROP CONSTRAINT` command.
- `CHECK` constraints support **complex expressions** and **multiple conditions**.

Let me know if you need further clarification or more examples! 😊
