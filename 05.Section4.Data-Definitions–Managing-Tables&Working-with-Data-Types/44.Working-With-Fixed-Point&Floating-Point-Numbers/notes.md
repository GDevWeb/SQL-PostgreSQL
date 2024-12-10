# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **44. Working with Fixed-Point and Floating-Point Numbers in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614032#overview)

---

### **Overview**

PostgreSQL supports two types of numeric values for storing decimal numbers:

1. **Fixed-Point Numbers**: Store exact decimal values.
2. **Floating-Point Numbers**: Store approximate decimal values.

Choosing the correct type is crucial for ensuring **data integrity**, **precision**, and **performance** in your database.

---

### **1. Fixed-Point Numbers**

Fixed-point numbers are used when **exact precision** is required, such as for **financial data**.

#### **Fixed-Point Data Types in PostgreSQL**

| **Data Type**       | **Description**                                     |
| ------------------- | --------------------------------------------------- |
| **`DECIMAL(p, s)`** | Exact numeric type with `p` precision and `s` scale |
| **`NUMERIC(p, s)`** | Same as `DECIMAL`; allows exact storage of numbers  |

- **Precision (`p`)**: Total number of digits (both left and right of the decimal point).
- **Scale (`s`)**: Number of digits to the right of the decimal point.

#### **Examples**

```sql
CREATE TABLE transactions (
    TransactionID SERIAL PRIMARY KEY,
    Amount DECIMAL(10, 2) CHECK (Amount >= 0),
    TaxRate NUMERIC(5, 2) CHECK (TaxRate >= 0)
);
```

- **`DECIMAL(10, 2)`**: Stores up to 10 digits with 2 digits after the decimal (e.g., `12345678.90`).
- **`NUMERIC(5, 2)`**: Stores up to 5 digits with 2 digits after the decimal (e.g., `99.99`).

#### **Inserting Data**

```sql
INSERT INTO transactions (Amount, TaxRate)
VALUES (2500.75, 15.50);
```

---

### **2. Floating-Point Numbers**

Floating-point numbers are used when **approximate precision** is acceptable, such as for **scientific or engineering data**.

#### **Floating-Point Data Types in PostgreSQL**

| **Data Type**          | **Description**                                  | **Precision**         |
| ---------------------- | ------------------------------------------------ | --------------------- |
| **`REAL`**             | Single-precision floating-point number (4 bytes) | ~6 decimal digits     |
| **`DOUBLE PRECISION`** | Double-precision floating-point number (8 bytes) | ~15-17 decimal digits |

#### **Examples**

```sql
CREATE TABLE measurements (
    MeasurementID SERIAL PRIMARY KEY,
    Temperature REAL,
    Distance DOUBLE PRECISION
);
```

- **`REAL`**: Stores single-precision floating-point numbers (e.g., `123.4567`).
- **`DOUBLE PRECISION`**: Stores double-precision floating-point numbers (e.g., `12345.678901234567`).

#### **Inserting Data**

```sql
INSERT INTO measurements (Temperature, Distance)
VALUES (36.5, 1234.56789);
```

---

### **Key Differences Between Fixed-Point and Floating-Point**

| **Feature**      | **Fixed-Point (`DECIMAL`/`NUMERIC`)** | **Floating-Point (`REAL`/`DOUBLE PRECISION`)**             |
| ---------------- | ------------------------------------- | ---------------------------------------------------------- |
| **Precision**    | Exact precision                       | Approximate precision                                      |
| **Use Case**     | Financial data, exact calculations    | Scientific data, approximate calculations                  |
| **Storage Size** | Variable (based on precision)         | Fixed (4 bytes for `REAL`, 8 bytes for `DOUBLE PRECISION`) |
| **Performance**  | Slower for large-scale calculations   | Faster for large-scale calculations                        |

---

### **Choosing Between Fixed-Point and Floating-Point**

1. **Use Fixed-Point (`DECIMAL`/`NUMERIC`) When**:

   - Precision is critical (e.g., currency, financial transactions).
   - You need exact calculations (e.g., `10.25 + 5.75 = 16.00`).

2. **Use Floating-Point (`REAL`/`DOUBLE PRECISION`) When**:
   - Approximation is acceptable (e.g., measurements, scientific data).
   - You need to store very large or very small numbers efficiently.

---

### **Examples of Fixed-Point and Floating-Point Operations**

#### **1. Fixed-Point Calculation**

```sql
CREATE TABLE invoices (
    InvoiceID SERIAL PRIMARY KEY,
    Amount DECIMAL(10, 2),
    TaxRate DECIMAL(4, 2)
);

INSERT INTO invoices (Amount, TaxRate)
VALUES (1000.50, 7.25);

-- Calculate total amount including tax
SELECT
    Amount,
    TaxRate,
    Amount + (Amount * TaxRate / 100) AS TotalAmount
FROM invoices;
```

**Output**:

| Amount  | TaxRate | TotalAmount |
| ------- | ------- | ----------- |
| 1000.50 | 7.25    | 1072.54     |

#### **2. Floating-Point Calculation**

```sql
CREATE TABLE physics_experiments (
    ExperimentID SERIAL PRIMARY KEY,
    Measurement DOUBLE PRECISION
);

INSERT INTO physics_experiments (Measurement)
VALUES (12345.678901234567);

SELECT
    Measurement,
    Measurement * 1.000001 AS AdjustedMeasurement
FROM physics_experiments;
```

**Output**:

| Measurement        | AdjustedMeasurement |
| ------------------ | ------------------- |
| 12345.678901234567 | 12345.692247812456  |

---

### **Exercises**

#### **Exercise 1: Create a `products` Table**

Create a `products` table with the following columns:

- `ProductID` (Auto-increment primary key)
- `ProductName` (`VARCHAR(100)`, not null)
- `Price` (`DECIMAL(10, 2)`, must be greater than 0)
- `Weight` (`DOUBLE PRECISION`)

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0),
    Weight DOUBLE PRECISION
);
```

#### **Exercise 2: Insert Sample Data**

Insert the following products:

1. **ProductName**: "Laptop", **Price**: 999.99, **Weight**: 2.35
2. **ProductName**: "Smartphone", **Price**: 499.49, **Weight**: 0.35

```sql
INSERT INTO products (ProductName, Price, Weight)
VALUES
    ('Laptop', 999.99, 2.35),
    ('Smartphone', 499.49, 0.35);
```

#### **Exercise 3: Query the `products` Table**

Retrieve all products with their prices and weights.

```sql
SELECT * FROM products;
```

---

### **Summary**

- **Fixed-Point Numbers** (`DECIMAL`/`NUMERIC`) provide **exact precision** and are ideal for financial data.
- **Floating-Point Numbers** (`REAL`/`DOUBLE PRECISION`) provide **approximate precision** and are suitable for scientific calculations.
- Choose the appropriate numeric type based on your **precision needs** and **use case**.

Let me know if you need further clarification or additional examples! 😊''
