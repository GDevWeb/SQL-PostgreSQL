# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **33. The Importance of Data Types (Value Types) in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614004#overview)
- [schema data types](img/data-types.png)

---

#### **What Are Data Types?**

In PostgreSQL, a **data type** (also called a value type) defines the kind of data that can be stored in a table column. Examples of data types include integers, text, dates, booleans, and more.

Choosing the correct data type is crucial for:

1. **Data Integrity**: Ensuring that only valid data is stored.
2. **Efficiency**: Optimizing storage and query performance.
3. **Accuracy**: Preventing data loss or misinterpretation.

---

### **Common Data Types in PostgreSQL**

#### **1. Numeric Data Types**

| **Data Type**      | **Description**                                     | **Example**                     |
| ------------------ | --------------------------------------------------- | ------------------------------- |
| `SMALLINT`         | Small integer (-32,768 to 32,767)                   | `123`                           |
| `INTEGER` or `INT` | Standard integer                                    | `1000`                          |
| `BIGINT`           | Large integer                                       | `9223372036854775807`           |
| `DECIMAL(p, s)`    | Fixed-point number with precision `p` and scale `s` | `DECIMAL(10, 2)` for `12345.67` |
| `NUMERIC(p, s)`    | Same as `DECIMAL`                                   | `NUMERIC(8, 3)` for `1234.567`  |
| `REAL`             | Single-precision floating-point number              | `1.23`                          |
| `DOUBLE PRECISION` | Double-precision floating-point number              | `3.14159`                       |

#### **2. Character Data Types**

| **Data Type** | **Description**                               | **Example**        |
| ------------- | --------------------------------------------- | ------------------ |
| `CHAR(n)`     | Fixed-length string (padded with spaces)      | `'ABC'`            |
| `VARCHAR(n)`  | Variable-length string (up to `n` characters) | `'John Doe'`       |
| `TEXT`        | Unlimited-length string                       | `'This is a note'` |

#### **3. Date and Time Data Types**

| **Data Type**                              | **Description**          | **Example**              |
| ------------------------------------------ | ------------------------ | ------------------------ |
| `DATE`                                     | Calendar date            | `2024-05-25`             |
| `TIME`                                     | Time of day              | `14:30:00`               |
| `TIMESTAMP`                                | Date and time            | `2024-05-25 14:30:00`    |
| `TIMESTAMP WITH TIME ZONE` (`TIMESTAMPTZ`) | Date, time, and timezone | `2024-05-25 14:30:00+02` |

#### **4. Boolean Data Type**

| **Data Type** | **Description**                   | **Example** |
| ------------- | --------------------------------- | ----------- |
| `BOOLEAN`     | Stores `TRUE`, `FALSE`, or `NULL` | `TRUE`      |

#### **5. Other Data Types**

| **Data Type** | **Description**               | **Example**                            |
| ------------- | ----------------------------- | -------------------------------------- |
| `UUID`        | Universally Unique Identifier | `550e8400-e29b-41d4-a716-446655440000` |
| `JSON`        | JSON data                     | `{"name": "John", "age": 30}`          |
| `ARRAY`       | Array of values               | `'{1,2,3}'::INTEGER[]`                 |

---

### **Why Data Types Matter**

1. **Data Integrity**

   - Data types ensure that only appropriate data is stored in each column.
   - Example: Preventing text from being entered into a numeric field.

2. **Performance**

   - Choosing the right data type can improve query performance and reduce storage requirements.
   - Example: Use `SMALLINT` instead of `INTEGER` if values are within a small range.

3. **Validation**

   - PostgreSQL automatically enforces data type constraints.
   - Example: Inserting a string into an `INTEGER` column will cause an error.

4. **Operations and Comparisons**
   - Data types determine what operations can be performed.
   - Example: You can perform arithmetic on numeric types but not on text.

---

### **Examples of Data Types in Action**

#### **Creating a Table with Various Data Types**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INTEGER CHECK (Age >= 18),
    HireDate DATE DEFAULT CURRENT_DATE,
    IsActive BOOLEAN DEFAULT TRUE,
    Profile JSON
);
```

#### **Inserting Data into the Table**

```sql
INSERT INTO employees (Name, Age, HireDate, IsActive, Profile)
VALUES ('Alice Johnson', 30, '2024-06-01', TRUE, '{"skills": ["SQL", "PostgreSQL"]}');
```

#### **Querying the Table**

```sql
SELECT * FROM employees;
```

---

### **Common Mistakes with Data Types**

1. **Choosing the Wrong Data Type**:

   - **Mistake**: Using `VARCHAR(255)` for a field that only needs a few characters (e.g., country codes).
   - **Solution**: Use `CHAR(2)` for fixed-length short strings.

2. **Ignoring Precision for Numbers**:

   - **Mistake**: Using `FLOAT` when exact decimal precision is required (e.g., for currency).
   - **Solution**: Use `DECIMAL(10, 2)` for precise decimal values.

3. **Overusing `TEXT`**:
   - **Mistake**: Using `TEXT` for fields that have a predictable length.
   - **Solution**: Use `VARCHAR(n)` to limit the data length and optimize storage.

---

### **Exercises**

#### **Exercise 1: Create a Table with Appropriate Data Types**

Create a `products` table with the following columns:

- `ProductID` (Auto-incrementing primary key)
- `ProductName` (Up to 100 characters, not null)
- `Price` (Decimal with 2 decimal places)
- `InStock` (Boolean)

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2),
    InStock BOOLEAN DEFAULT TRUE
);
```

#### **Exercise 2: Insert Valid Data**

Insert a product into the `products` table:

- `ProductName`: "Laptop"
- `Price`: 799.99
- `InStock`: `TRUE`

```sql
INSERT INTO products (ProductName, Price, InStock)
VALUES ('Laptop', 799.99, TRUE);
```

---

### **Summary**

- **Data types** ensure data integrity, optimize performance, and enable appropriate operations.
- Choosing the right data type is crucial for designing efficient and reliable databases.
- PostgreSQL offers a rich set of data types for different use cases.

Let me know if you need more examples or clarification on any specific data type! 😊
