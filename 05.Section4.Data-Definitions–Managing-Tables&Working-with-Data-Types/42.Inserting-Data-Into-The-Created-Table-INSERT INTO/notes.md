# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **42. Inserting Data into the Created Table (`INSERT INTO`) in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614028#overview)

---

### **Overview**

The **`INSERT INTO`** statement in PostgreSQL is used to add new rows to a table. You can insert data into **all columns** or **specific columns** depending on your needs.

---

### **Basic Syntax of `INSERT INTO`**

#### **1. Insert Data into All Columns**

If you want to insert values into **all columns**, use this syntax:

```sql
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
```

- The order of the values must match the order of the columns in the table.

#### **2. Insert Data into Specific Columns**

If you want to insert values into **specific columns**, use this syntax:

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

- You only need to provide values for the columns you specify.

---

### **Examples of `INSERT INTO`**

Let's use the following `employees` table as an example:

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    HireDate DATE DEFAULT CURRENT_DATE
);
```

#### **1. Insert Data into All Columns**

```sql
INSERT INTO employees
VALUES (DEFAULT, 'Alice Johnson', 'Developer', '2024-06-01');
```

- **`DEFAULT`**: Automatically uses the next value for the `SERIAL` column (`EmployeeID`).
- **All columns** are specified in the same order as the table definition.

#### **2. Insert Data into Specific Columns**

```sql
INSERT INTO employees (Name, Role)
VALUES ('Bob Smith', 'Manager');
```

- The `HireDate` will use the **default value** (`CURRENT_DATE`).
- The `EmployeeID` will auto-increment.

#### **3. Insert Multiple Rows**

You can insert multiple rows in a single `INSERT` statement.

```sql
INSERT INTO employees (Name, Role, HireDate)
VALUES
    ('Catherine Lee', 'Designer', '2024-06-15'),
    ('David Brown', 'QA', '2024-07-01'),
    ('Eve Adams', 'HR', '2024-07-10');
```

---

### **Inserting Data with Special Values**

#### **1. Inserting `NULL` Values**

You can insert `NULL` into a column to represent missing data.

```sql
INSERT INTO employees (Name, Role, HireDate)
VALUES ('Frank White', NULL, NULL);
```

#### **2. Inserting Dates and Times**

```sql
INSERT INTO employees (Name, Role, HireDate)
VALUES ('Grace Green', 'Intern', '2024-08-01');
```

---

### **Using `RETURNING` Clause**

The `RETURNING` clause allows you to return values from the inserted rows, such as auto-generated IDs.

#### **Example**

```sql
INSERT INTO employees (Name, Role)
VALUES ('Hank Black', 'Developer')
RETURNING EmployeeID, HireDate;
```

#### **Output**

```
 EmployeeID | HireDate
------------+------------
          7 | 2024-06-01
```

---

### **Common Errors and Solutions**

1. **Missing `NOT NULL` Column Value**

   - **Error**: `ERROR: null value in column "Name" violates not-null constraint`
   - **Solution**: Ensure all `NOT NULL` columns have values.

2. **Violating Unique Constraints**

   - **Error**: `ERROR: duplicate key value violates unique constraint`
   - **Solution**: Ensure values for `PRIMARY KEY` or `UNIQUE` columns are unique.

3. **Data Type Mismatch**
   - **Error**: `ERROR: invalid input syntax for type date`
   - **Solution**: Verify that the data types of the values match the column definitions.

---

### **Exercises**

#### **Exercise 1: Insert a Single Row**

Insert a new employee with the following details:

- **Name**: "Ivy White"
- **Role**: "Developer"
- **Hire Date**: "2024-06-20"

```sql
INSERT INTO employees (Name, Role, HireDate)
VALUES ('Ivy White', 'Developer', '2024-06-20');
```

#### **Exercise 2: Insert Multiple Rows**

Insert the following employees:

1. **Name**: "Jack Blue", **Role**: "QA", **Hire Date**: "2024-07-05"
2. **Name**: "Karen Grey", **Role**: "HR", **Hire Date**: "2024-07-15"

```sql
INSERT INTO employees (Name, Role, HireDate)
VALUES
    ('Jack Blue', 'QA', '2024-07-05'),
    ('Karen Grey', 'HR', '2024-07-15');
```

#### **Exercise 3: Insert Data with `RETURNING`**

Insert a new employee and return the `EmployeeID` and `HireDate`:

- **Name**: "Leo Brown"
- **Role**: "Manager"

```sql
INSERT INTO employees (Name, Role)
VALUES ('Leo Brown', 'Manager')
RETURNING EmployeeID, HireDate;
```

---

### **Summary**

- **`INSERT INTO`** is used to add new rows to a table.
- You can insert data into **all columns** or **specific columns**.
- Use **`RETURNING`** to get values from the inserted rows.
- Handle errors related to constraints and data types carefully.

Let me know if you need further clarification or additional examples! 😊
