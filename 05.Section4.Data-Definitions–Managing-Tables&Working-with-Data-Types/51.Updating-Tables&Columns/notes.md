# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **51. Updating Tables & Columns in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614052#overview)

---

#### **Overview**

In PostgreSQL, updating tables and columns involves modifying the **structure** or **data** within a table. This can be achieved using the `UPDATE` statement for data changes and `ALTER TABLE` for structural changes.

---

### **1. Updating Data in Tables**

The **`UPDATE`** statement is used to modify existing rows in a table. You can update one or more rows based on a condition.

#### **Syntax**

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

- **`table_name`**: The name of the table to update.
- **`SET`**: Specifies the columns and their new values.
- **`WHERE`**: Filters which rows to update (optional). If omitted, **all rows** will be updated.

---

#### **Example Table**

Let's use the following `employees` table for examples:

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    Salary DECIMAL(10, 2),
    Department VARCHAR(50)
);
```

#### **Insert Sample Data**

```sql
INSERT INTO employees (Name, Role, Salary, Department)
VALUES
    ('Alice Johnson', 'Developer', 70000, 'Engineering'),
    ('Bob Smith', 'Manager', 80000, 'Sales'),
    ('Catherine Lee', 'Designer', 65000, 'Marketing');
```

---

#### **1.1. Update a Single Row**

Increase Alice's salary by 10%.

```sql
UPDATE employees
SET Salary = Salary * 1.10
WHERE Name = 'Alice Johnson';
```

#### **1.2. Update Multiple Rows**

Set the department to `'Design'` for all employees with the role `'Designer'`.

```sql
UPDATE employees
SET Department = 'Design'
WHERE Role = 'Designer';
```

#### **1.3. Update All Rows**

Set a default bonus of 5000 for all employees by adding a `Bonus` column.

```sql
ALTER TABLE employees
ADD COLUMN Bonus DECIMAL(10, 2) DEFAULT 5000;

UPDATE employees
SET Bonus = 5000;
```

#### **Check the Updated Data**

```sql
SELECT * FROM employees;
```

**Sample Output**:

| EmployeeID | Name          | Role      | Salary | Department  | Bonus |
| ---------- | ------------- | --------- | ------ | ----------- | ----- |
| 1          | Alice Johnson | Developer | 77000  | Engineering | 5000  |
| 2          | Bob Smith     | Manager   | 80000  | Sales       | 5000  |
| 3          | Catherine Lee | Designer  | 65000  | Design      | 5000  |

---

### **2. Updating Table Structure**

The **`ALTER TABLE`** statement is used to modify the structure of an existing table. You can **add**, **drop**, or **modify** columns.

#### **2.1. Add a New Column**

Add a `HireDate` column with a default value of the current date.

```sql
ALTER TABLE employees
ADD COLUMN HireDate DATE DEFAULT CURRENT_DATE;
```

#### **2.2. Drop a Column**

Remove the `Bonus` column.

```sql
ALTER TABLE employees
DROP COLUMN Bonus;
```

#### **2.3. Rename a Column**

Rename the `Role` column to `JobTitle`.

```sql
ALTER TABLE employees
RENAME COLUMN Role TO JobTitle;
```

#### **2.4. Change Column Data Type**

Change the `Salary` column to store larger values.

```sql
ALTER TABLE employees
ALTER COLUMN Salary TYPE DECIMAL(12, 2);
```

#### **2.5. Set or Drop Default Values**

Set a default value for the `Department` column.

```sql
ALTER TABLE employees
ALTER COLUMN Department SET DEFAULT 'General';
```

Drop the default value.

```sql
ALTER TABLE employees
ALTER COLUMN Department DROP DEFAULT;
```

#### **2.6. Add a Constraint**

Add a `NOT NULL` constraint to the `HireDate` column.

```sql
ALTER TABLE employees
ALTER COLUMN HireDate SET NOT NULL;
```

---

### **3. Combining Updates**

#### **Example: Multiple Updates in One Statement**

Increase the salary by 5% and update the department for all developers.

```sql
UPDATE employees
SET
    Salary = Salary * 1.05,
    Department = 'Software Development'
WHERE JobTitle = 'Developer';
```

---

### **4. Checking Table Structure**

Use the `\d` command in `psql` to view the table structure.

```sql
\d employees
```

**Sample Output**:

```
         Table "public.employees"
   Column    |         Type          | Modifiers
-------------+-----------------------+------------------------------------
 EmployeeID  | integer               | not null default nextval('employees_employeeid_seq'::regclass)
 Name        | character varying(100)| not null
 JobTitle    | character varying(50) |
 Salary      | numeric(12,2)         |
 Department  | character varying(50) |
 HireDate    | date                  | not null default CURRENT_DATE
Indexes:
    "employees_pkey" PRIMARY KEY, btree (employeeid)
```

---

### **Exercises**

#### **Exercise 1: Update Data**

1. Increase the salary of all employees in the **`Sales`** department by 10%.

   ```sql
   UPDATE employees
   SET Salary = Salary * 1.10
   WHERE Department = 'Sales';
   ```

2. Change the `JobTitle` of **"Bob Smith"** to **"Senior Manager"**.

   ```sql
   UPDATE employees
   SET JobTitle = 'Senior Manager'
   WHERE Name = 'Bob Smith';
   ```

#### **Exercise 2: Alter Table Structure**

1. Add a new column **`Email`** (`VARCHAR(150)`).

   ```sql
   ALTER TABLE employees
   ADD COLUMN Email VARCHAR(150);
   ```

2. Rename the **`Department`** column to **`Division`**.

   ```sql
   ALTER TABLE employees
   RENAME COLUMN Department TO Division;
   ```

3. Set a default value of **`'Unknown'`** for the **`Email`** column.

   ```sql
   ALTER TABLE employees
   ALTER COLUMN Email SET DEFAULT 'Unknown';
   ```

---

### **Summary**

- Use **`UPDATE`** to modify existing rows in a table.
- Use **`ALTER TABLE`** to modify the table structure by adding, dropping, renaming, or altering columns.
- Be cautious with updates and structure changes, especially in production databases.

Let me know if you need more examples or clarification! 😊
