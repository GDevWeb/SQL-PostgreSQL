# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **54. Exploring the `NOT NULL` Constraint in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614056#overview)

---

### **Overview**

The **`NOT NULL`** constraint in PostgreSQL ensures that a column **cannot store `NULL` values**. This constraint is essential for maintaining data integrity by making sure that important columns always contain meaningful data.

---

### **1. Understanding `NOT NULL`**

- **Purpose**: Enforces that a column must always have a value.
- **Effect**: Prevents `NULL` values from being inserted into the column.
- **Default Behavior**: If no constraint is specified, a column can accept `NULL` values.

---

### **2. Creating a Table with `NOT NULL` Constraints**

#### **Syntax**

```sql
CREATE TABLE table_name (
    column_name data_type NOT NULL
);
```

#### **Example: `employees` Table**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL,
    Department VARCHAR(50),
    HireDate DATE DEFAULT CURRENT_DATE
);
```

In this example:

- **`FullName`** and **`Email`** columns cannot contain `NULL` values.
- The **`Department`** and **`HireDate`** columns can accept `NULL` values.

---

### **3. Inserting Data with `NOT NULL` Constraints**

#### **Valid Insertion**

```sql
INSERT INTO employees (FullName, Email, Department)
VALUES ('Alice Johnson', 'alice.johnson@example.com', 'Engineering');
```

#### **Invalid Insertion (Missing `NOT NULL` Column)**

```sql
INSERT INTO employees (FullName, Department)
VALUES ('Bob Smith', 'Sales');
```

**Error:**

```
ERROR:  null value in column "Email" violates not-null constraint
```

---

### **4. Modifying Existing Tables to Add `NOT NULL` Constraints**

You can modify an existing table to add a `NOT NULL` constraint to a column.

#### **Add `NOT NULL` to an Existing Column**

```sql
ALTER TABLE employees
ALTER COLUMN Department SET NOT NULL;
```

**Note**: This will only work if there are **no `NULL` values** in the column. If `NULL` values exist, you must update them first.

#### **Update `NULL` Values Before Adding the Constraint**

```sql
UPDATE employees
SET Department = 'General'
WHERE Department IS NULL;
```

Now, you can safely add the `NOT NULL` constraint:

```sql
ALTER TABLE employees
ALTER COLUMN Department SET NOT NULL;
```

---

### **5. Removing `NOT NULL` Constraints**

You can remove a `NOT NULL` constraint using the `DROP NOT NULL` clause.

#### **Example**

```sql
ALTER TABLE employees
ALTER COLUMN Department DROP NOT NULL;
```

Now, the `Department` column can accept `NULL` values.

---

### **6. Combining `NOT NULL` with Default Values**

You can combine `NOT NULL` constraints with default values to ensure that a column always has a value, even if no value is provided during insertion.

#### **Example**

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL DEFAULT 10.00
);
```

#### **Insert Without Providing `Price`**

```sql
INSERT INTO products (ProductName)
VALUES ('Notebook');
```

**Result:**

| ProductID | ProductName | Price |
| --------- | ----------- | ----- |
| 1         | Notebook    | 10.00 |

The default value of `10.00` is used because `Price` is `NOT NULL`.

---

### **7. Checking Constraints on a Table**

You can check the constraints applied to a table using the `\d` command in `psql`.

#### **Example**

```sql
\d employees
```

**Sample Output:**

```
         Table "public.employees"
   Column    |         Type          |           Modifiers
-------------+-----------------------+---------------------------------
 EmployeeID  | integer               | not null default nextval('employees_employeeid_seq'::regclass)
 FullName    | character varying(100)| not null
 Email       | character varying(150)| not null
 Department  | character varying(50)|
 HireDate    | date                  | default CURRENT_DATE
Indexes:
    "employees_pkey" PRIMARY KEY, btree (employeeid)
```

---

### **Exercises**

#### **Exercise 1: Create a `students` Table**

Create a `students` table with the following columns:

- `StudentID` (Auto-increment primary key)
- `Name` (`VARCHAR(100)`, `NOT NULL`)
- `Email` (`VARCHAR(150)`, `NOT NULL`)
- `EnrollmentDate` (`DATE`, default to the current date)

```sql
CREATE TABLE students (
    StudentID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL,
    EnrollmentDate DATE DEFAULT CURRENT_DATE
);
```

#### **Exercise 2: Insert Valid Data**

Insert a student with all required fields:

```sql
INSERT INTO students (Name, Email)
VALUES ('John Doe', 'john.doe@example.com');
```

#### **Exercise 3: Attempt to Insert Invalid Data**

Attempt to insert a student without an email:

```sql
INSERT INTO students (Name)
VALUES ('Jane Smith');
```

#### **Exercise 4: Add `NOT NULL` to an Existing Column**

1. Create a `courses` table:

   ```sql
   CREATE TABLE courses (
       CourseID SERIAL PRIMARY KEY,
       CourseName VARCHAR(100),
       Instructor VARCHAR(100)
   );
   ```

2. Insert some data with `NULL` values:

   ```sql
   INSERT INTO courses (CourseName) VALUES ('Math 101');
   ```

3. Update `NULL` values in the `Instructor` column:

   ```sql
   UPDATE courses SET Instructor = 'TBD' WHERE Instructor IS NULL;
   ```

4. Add the `NOT NULL` constraint:

   ```sql
   ALTER TABLE courses ALTER COLUMN Instructor SET NOT NULL;
   ```

---

### **Summary**

- The **`NOT NULL`** constraint ensures that a column cannot store `NULL` values.
- When inserting data, omitting a `NOT NULL` column will result in an error.
- You can add or drop `NOT NULL` constraints using `ALTER TABLE`.
- Combine `NOT NULL` with **default values** to ensure columns always have meaningful data.

Let me know if you need further clarification or additional examples! 😊
