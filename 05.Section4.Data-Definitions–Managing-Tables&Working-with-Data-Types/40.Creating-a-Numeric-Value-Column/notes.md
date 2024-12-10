# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **40. Creating a Numeric Value Column in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614022#overview)
- [udemy attachment - schema - a closer look at numeric values types](img/a-closer-look-at-numeric-values-types.png)
- [udemy attachment - schema - storing salary ](img/a-closer-look-at-numeric-values-types.png)

---

#### **Overview**

In PostgreSQL, **numeric columns** are used to store various types of numbers, including integers, decimals, and floating-point values. Selecting the appropriate numeric data type helps ensure **data integrity**, **performance efficiency**, and **optimized storage**.

In this lesson, you'll learn how to create tables with numeric value columns using different data types.

---

### **Common Numeric Data Types in PostgreSQL**

| **Data Type**          | **Description**                                  | **Range**                         |
| ---------------------- | ------------------------------------------------ | --------------------------------- |
| **`SMALLINT`**         | Small integer (2 bytes)                          | -32,768 to 32,767                 |
| **`INTEGER` / `INT`**  | Standard integer (4 bytes)                       | -2,147,483,648 to 2,147,483,647   |
| **`BIGINT`**           | Large integer (8 bytes)                          | -9 quintillion to 9 quintillion   |
| **`DECIMAL(p, s)`**    | Exact fixed-point number                         | User-defined precision and scale  |
| **`NUMERIC(p, s)`**    | Same as `DECIMAL`                                | User-defined precision and scale  |
| **`REAL`**             | Single-precision floating-point number (4 bytes) | 6 decimal digits of precision     |
| **`DOUBLE PRECISION`** | Double-precision floating-point number (8 bytes) | 15-17 decimal digits of precision |
| **`SERIAL`**           | Auto-incrementing integer (4 bytes)              | 1 to 2,147,483,647                |
| **`BIGSERIAL`**        | Auto-incrementing large integer (8 bytes)        | 1 to 9,223,372,036,854,775,807    |

---

### **Creating a Table with Numeric Value Columns**

#### **Example 1: Creating Integer Columns**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Age INTEGER CHECK (Age >= 18),
    YearsOfExperience SMALLINT CHECK (YearsOfExperience >= 0)
);
```

- **`EmployeeID SERIAL`**: Auto-incrementing primary key.
- **`Age INTEGER`**: Standard integer with a constraint to ensure age is 18 or older.
- **`YearsOfExperience SMALLINT`**: Small integer for storing experience in years.

#### **Example 2: Creating Decimal Columns**

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    Price DECIMAL(10, 2) CHECK (Price > 0),
    DiscountRate NUMERIC(4, 2) CHECK (DiscountRate >= 0 AND DiscountRate <= 100)
);
```

- **`Price DECIMAL(10, 2)`**: Fixed-point number with up to 10 digits, 2 after the decimal point.
- **`DiscountRate NUMERIC(4, 2)`**: Numeric field for percentages, e.g., `15.25`.

#### **Example 3: Creating Floating-Point Columns**

```sql
CREATE TABLE measurements (
    MeasurementID SERIAL PRIMARY KEY,
    Temperature REAL,
    Distance DOUBLE PRECISION
);
```

- **`Temperature REAL`**: Single-precision floating-point number.
- **`Distance DOUBLE PRECISION`**: Double-precision floating-point number for higher accuracy.

---

### **Inserting Data into Numeric Columns**

#### **Example**:

```sql
INSERT INTO employees (Age, YearsOfExperience)
VALUES (25, 3);
```

```sql
INSERT INTO products (Price, DiscountRate)
VALUES (199.99, 10.50);
```

```sql
INSERT INTO measurements (Temperature, Distance)
VALUES (36.5, 1234.56789);
```

---

### **Best Practices for Numeric Columns**

1. **Use the Smallest Data Type**:

   - Choose `SMALLINT` for values that fit within the range -32,768 to 32,767.
   - Use `BIGINT` only if you expect very large values.

2. **Exact vs. Approximate Precision**:

   - Use **`DECIMAL`/`NUMERIC`** for financial data where exact precision is required.
   - Use **`REAL`/`DOUBLE PRECISION`** for scientific calculations where slight approximations are acceptable.

3. **Add Constraints**:
   - Use constraints like `CHECK` to ensure data integrity (e.g., `CHECK (Price > 0)`).

---

### **Exercises**

#### **Exercise 1: Create a `products` Table**

Create a `products` table with the following columns:

- `ProductID` (Auto-increment primary key)
- `ProductName` (`VARCHAR(100)`, not null)
- `Price` (`DECIMAL(10, 2)`, must be greater than 0)
- `StockQuantity` (`INTEGER`, must be non-negative)

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0),
    StockQuantity INTEGER CHECK (StockQuantity >= 0)
);
```

#### **Exercise 2: Insert Data into the `products` Table**

Insert the following product:

- `ProductName`: "Laptop"
- `Price`: 999.99
- `StockQuantity`: 50

```sql
INSERT INTO products (ProductName, Price, StockQuantity)
VALUES ('Laptop', 999.99, 50);
```

#### **Exercise 3: Create a `transactions` Table**

Create a `transactions` table with:

- `TransactionID` (Auto-increment primary key)
- `Amount` (`NUMERIC(12, 2)`, must be greater than 0)
- `TaxRate` (`DECIMAL(4, 2)`, between 0 and 20)

```sql
CREATE TABLE transactions (
    TransactionID SERIAL PRIMARY KEY,
    Amount NUMERIC(12, 2) CHECK (Amount > 0),
    TaxRate DECIMAL(4, 2) CHECK (TaxRate >= 0 AND TaxRate <= 20)
);
```

---

### **Summary**

- Use **`INTEGER`**, **`SMALLINT`**, or **`BIGINT`** for whole numbers.
- Use **`DECIMAL`/`NUMERIC`** for exact decimal values.
- Use **`REAL`** or **`DOUBLE PRECISION`** for approximate floating-point values.
- Add constraints to ensure **data integrity** (e.g., `CHECK (value > 0)`).

Let me know if you need further clarification or additional examples! 😊
