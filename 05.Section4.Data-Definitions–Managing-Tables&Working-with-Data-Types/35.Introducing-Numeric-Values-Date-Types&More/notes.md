# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **35. Introducing Numeric Values, Date Types, and More in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614014#overview)
- [schema - key data types & values types](img/key-data-types&values-types.png)

---

### **Overview**

In PostgreSQL, different data types are used to store **numbers**, **dates**, and **times**. Selecting the appropriate data type is crucial for ensuring **data integrity**, **performance efficiency**, and accurate computations.

This lesson covers the key numeric and date/time types used in PostgreSQL, along with examples and best practices.

---

### **1. Numeric Data Types**

PostgreSQL provides a range of numeric data types for handling different kinds of numbers, including integers, decimals, and floating-point numbers.

| **Data Type**                              | **Description**                                            | **Storage Size** | **Example**           |
| ------------------------------------------ | ---------------------------------------------------------- | ---------------- | --------------------- |
| **`SMALLINT`**                             | Small integer (-32,768 to 32,767)                          | 2 bytes          | `123`                 |
| **`INTEGER`** or **`INT`**                 | Standard integer (-2,147,483,648 to 2,147,483,647)         | 4 bytes          | `1000`                |
| **`BIGINT`**                               | Large integer (-9 quintillion to +9 quintillion)           | 8 bytes          | `9223372036854775807` |
| **`DECIMAL(p, s)`** or **`NUMERIC(p, s)`** | Exact, fixed-point number with precision `p` and scale `s` | Variable         | `1234.56`             |
| **`REAL`**                                 | Single-precision floating-point number                     | 4 bytes          | `1.23`                |
| **`DOUBLE PRECISION`**                     | Double-precision floating-point number                     | 8 bytes          | `3.14159`             |
| **`SERIAL`**                               | Auto-incrementing integer (small range)                    | 4 bytes          | `1`, `2`, `3`         |
| **`BIGSERIAL`**                            | Auto-incrementing integer (large range)                    | 8 bytes          | `9223372036854775807` |

#### **Examples**

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Quantity INTEGER CHECK (Quantity >= 0),
    Price DECIMAL(10, 2)
);
```

- **`SERIAL`** auto-increments `ProductID`.
- **`INTEGER`** for whole numbers (`Quantity`).
- **`DECIMAL(10, 2)`** for exact values with 2 decimal places (`Price`).

---

### **2. Date and Time Data Types**

PostgreSQL provides flexible and powerful date/time types for handling dates, times, and timestamps.

| **Data Type**                                  | **Description**          | **Example**              |
| ---------------------------------------------- | ------------------------ | ------------------------ |
| **`DATE`**                                     | Calendar date            | `2024-06-01`             |
| **`TIME`**                                     | Time of day (no date)    | `14:30:00`               |
| **`TIMESTAMP`**                                | Date and time            | `2024-06-01 14:30:00`    |
| **`TIMESTAMP WITH TIME ZONE`** (`TIMESTAMPTZ`) | Date, time, and timezone | `2024-06-01 14:30:00+02` |
| **`INTERVAL`**                                 | Time interval            | `2 days 3 hours`         |

#### **Examples**

```sql
CREATE TABLE events (
    EventID SERIAL PRIMARY KEY,
    EventName VARCHAR(100),
    EventDate DATE,
    EventTime TIME,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

- **`DATE`** for the event date.
- **`TIME`** for the event time.
- **`TIMESTAMP`** to store the exact date and time when the row was created.

#### **Inserting Date and Time Values**

```sql
INSERT INTO events (EventName, EventDate, EventTime)
VALUES ('Meeting', '2024-06-15', '10:00:00');
```

---

### **3. Boolean Data Type**

| **Data Type** | **Description**                   | **Example**     |
| ------------- | --------------------------------- | --------------- |
| **`BOOLEAN`** | Stores `TRUE`, `FALSE`, or `NULL` | `TRUE`, `FALSE` |

#### **Example**

```sql
CREATE TABLE users (
    UserID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    IsActive BOOLEAN DEFAULT TRUE
);
```

- **`IsActive`** indicates if a user is active or not.

---

### **4. Other Useful Data Types**

1. **`UUID`**

   - **Description**: A universally unique identifier.
   - **Example**:
     ```sql
     CREATE TABLE sessions (
         SessionID UUID DEFAULT gen_random_uuid(),
         UserID INT
     );
     ```

2. **`ARRAY`**

   - **Description**: Stores arrays of values.
   - **Example**:
     ```sql
     CREATE TABLE orders (
         OrderID SERIAL PRIMARY KEY,
         ProductIDs INTEGER[]
     );
     ```

3. **`JSON` / `JSONB`**
   - **Description**: Stores JSON data (`JSONB` for binary format).
   - **Example**:
     ```sql
     CREATE TABLE logs (
         LogID SERIAL PRIMARY KEY,
         Data JSONB
     );
     ```

---

### **Choosing the Right Data Type**

1. **For Whole Numbers**:

   - Use `SMALLINT`, `INTEGER`, or `BIGINT` depending on the range of values.

2. **For Precise Decimal Numbers**:

   - Use `DECIMAL` or `NUMERIC` for financial data or when exact precision is required.

3. **For Approximate Decimal Numbers**:

   - Use `REAL` or `DOUBLE PRECISION` for scientific calculations.

4. **For Text**:

   - Use `VARCHAR(n)` for predictable lengths and `TEXT` for large or unlimited text.

5. **For Dates and Times**:
   - Use `DATE`, `TIME`, `TIMESTAMP`, or `TIMESTAMPTZ` depending on what you need to store.

---

### **Examples of Creating a Table with Multiple Data Types**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INTEGER CHECK (Age >= 18),
    HireDate DATE,
    Salary DECIMAL(10, 2),
    IsActive BOOLEAN DEFAULT TRUE
);
```

#### **Inserting Data**

```sql
INSERT INTO employees (Name, Age, HireDate, Salary, IsActive)
VALUES ('John Doe', 30, '2024-06-01', 50000.00, TRUE);
```

---

### **Exercises**

#### **Exercise 1: Create a Table with Numeric and Date Types**

Create a `payments` table with the following columns:

- `PaymentID` (Auto-increment primary key)
- `Amount` (Decimal with 2 decimal places)
- `PaymentDate` (Date)
- `IsConfirmed` (Boolean)

```sql
CREATE TABLE payments (
    PaymentID SERIAL PRIMARY KEY,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    IsConfirmed BOOLEAN DEFAULT FALSE
);
```

#### **Exercise 2: Insert Data into the `payments` Table**

Insert a payment with the following details:

- `Amount`: `150.75`
- `PaymentDate`: `2024-06-15`
- `IsConfirmed`: `TRUE`

```sql
INSERT INTO payments (Amount, PaymentDate, IsConfirmed)
VALUES (150.75, '2024-06-15', TRUE);
```

---

### **Summary**

- **Numeric Types**: `SMALLINT`, `INTEGER`, `BIGINT`, `DECIMAL`, `REAL`, `DOUBLE PRECISION`
- **Date/Time Types**: `DATE`, `TIME`, `TIMESTAMP`, `TIMESTAMPTZ`, `INTERVAL`
- **Boolean**: `BOOLEAN` for `TRUE` or `FALSE` values.
- Choosing the right data type is essential for **efficiency**, **data integrity**, and **performance**.

Let me know if you need more examples or explanations! 😊
