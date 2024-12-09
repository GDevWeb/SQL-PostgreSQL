# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **36. An Overview of Numeric Value Types in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28613660#overview)

---

#### **Why Use Different Numeric Types?**

PostgreSQL provides a variety of numeric data types to handle different kinds of numbers. Choosing the right numeric type is essential for:

1. **Data Integrity**: Ensuring values fit within appropriate ranges.
2. **Performance**: Optimizing memory usage and query speed.
3. **Storage Efficiency**: Reducing disk space by selecting the right size for numeric data.

---

### **Categories of Numeric Data Types**

1. **Integer Types**: For whole numbers (e.g., `1`, `42`, `-100`).
2. **Fixed-Point Types**: For exact decimal numbers (e.g., `10.50`, `123.45`).
3. **Floating-Point Types**: For approximate decimal numbers (e.g., `3.14`, `2.71828`).

---

### **1. Integer Data Types**

| **Data Type**              | **Storage Size** | **Range**                                               | **Example**           |
| -------------------------- | ---------------- | ------------------------------------------------------- | --------------------- |
| **`SMALLINT`**             | 2 bytes          | -32,768 to 32,767                                       | `123`                 |
| **`INTEGER`** or **`INT`** | 4 bytes          | -2,147,483,648 to 2,147,483,647                         | `1000`                |
| **`BIGINT`**               | 8 bytes          | -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 | `9223372036854775807` |

#### **Example**

```sql
CREATE TABLE orders (
    OrderID SERIAL PRIMARY KEY,
    Quantity INTEGER CHECK (Quantity >= 0),
    TotalAmount BIGINT
);
```

---

### **2. Fixed-Point Data Types**

Fixed-point types are used when **exact precision** is required, such as for financial data.

| **Data Type**       | **Description**                                           | **Example**                   |
| ------------------- | --------------------------------------------------------- | ----------------------------- |
| **`DECIMAL(p, s)`** | Exact number with `p` digits, `s` after the decimal point | `DECIMAL(10, 2)` → `12345.67` |
| **`NUMERIC(p, s)`** | Same as `DECIMAL`                                         | `NUMERIC(8, 3)` → `1234.567`  |

- **Precision (`p`)**: Total number of digits.
- **Scale (`s`)**: Number of digits after the decimal point.

#### **Example**

```sql
CREATE TABLE transactions (
    TransactionID SERIAL PRIMARY KEY,
    Amount NUMERIC(10, 2),
    TaxRate DECIMAL(5, 3)
);
```

---

### **3. Floating-Point Data Types**

Floating-point types store **approximate values** and are suitable for scientific or engineering calculations.

| **Data Type**          | **Storage Size** | **Precision**        | **Example**     |
| ---------------------- | ---------------- | -------------------- | --------------- |
| **`REAL`**             | 4 bytes          | 6 decimal digits     | `3.14159`       |
| **`DOUBLE PRECISION`** | 8 bytes          | 15-17 decimal digits | `2.71828182846` |

- **Note**: `FLOAT` is an alias for `REAL`.

#### **Example**

```sql
CREATE TABLE measurements (
    MeasurementID SERIAL PRIMARY KEY,
    Temperature REAL,
    Distance DOUBLE PRECISION
);
```

---

### **Choosing the Right Numeric Type**

| **Use Case**                         | **Recommended Type**         |
| ------------------------------------ | ---------------------------- |
| **Whole numbers (small range)**      | `SMALLINT`                   |
| **Whole numbers (standard range)**   | `INTEGER`                    |
| **Whole numbers (large range)**      | `BIGINT`                     |
| **Exact decimal (financial data)**   | `DECIMAL` or `NUMERIC`       |
| **Approximate decimal (float data)** | `REAL` or `DOUBLE PRECISION` |

---

### **Important Considerations**

1. **Precision Matters**:

   - Use **`DECIMAL`/`NUMERIC`** for financial calculations to avoid rounding errors.
   - Use **`REAL`/`DOUBLE PRECISION`** for scientific calculations where small inaccuracies are acceptable.

2. **Storage Efficiency**:

   - Use the smallest integer type (`SMALLINT`, `INTEGER`, `BIGINT`) that can accommodate your data range to save space.

3. **Performance**:
   - Smaller types are faster for computations and indexing.

---

### **Official Documentation Links**

- **PostgreSQL Numeric Data Types Overview**:  
  [PostgreSQL Numeric Types](https://www.postgresql.org/docs/current/datatype-numeric.html)

- **Integer Data Types**:  
  [PostgreSQL Integer Types](https://www.postgresql.org/docs/current/datatype-numeric.html#DATATYPE-INT)

- **Fixed-Point Data Types**:  
  [PostgreSQL Fixed-Point Types](https://www.postgresql.org/docs/current/datatype-numeric.html#DATATYPE-NUMERIC-DECIMAL)

- **Floating-Point Data Types**:  
  [PostgreSQL Floating-Point Types](https://www.postgresql.org/docs/current/datatype-numeric.html#DATATYPE-FLOAT)

---

### **Exercises**

#### **Exercise 1: Create a Table for Products**

Create a `products` table with the following columns:

- `ProductID` (Auto-increment primary key)
- `ProductName` (Variable-length string, up to 100 characters)
- `Quantity` (Integer, must be non-negative)
- `Price` (Exact decimal with 2 decimal places)

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Quantity INTEGER CHECK (Quantity >= 0),
    Price DECIMAL(10, 2)
);
```

#### **Exercise 2: Create a Table for Measurements**

Create a `measurements` table with:

- `MeasurementID` (Auto-increment primary key)
- `Temperature` (Floating-point number)
- `Distance` (Double-precision floating-point number)

```sql
CREATE TABLE measurements (
    MeasurementID SERIAL PRIMARY KEY,
    Temperature REAL,
    Distance DOUBLE PRECISION
);
```

---

### **Summary**

- PostgreSQL offers a variety of **numeric types**: integers, fixed-point, and floating-point.
- Choosing the correct type helps optimize **performance**, **storage**, and **data integrity**.
- Refer to the official documentation for more detailed information.

Let me know if you need more examples or further explanation! 😊
