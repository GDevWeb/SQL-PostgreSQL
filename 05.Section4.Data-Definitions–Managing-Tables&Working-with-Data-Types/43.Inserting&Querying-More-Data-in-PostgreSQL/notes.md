# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **43. Inserting & Querying More Data in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614030#overview)

---

#### **Overview**

In this lesson, we'll expand on **inserting data** into tables and explore **querying data** using various SQL `SELECT` statements. You'll learn how to insert multiple rows, retrieve specific data, and filter results effectively.

We'll work with the `employees` and `departments` tables as examples.

---

### **Step 1: Table Definitions**

Let's create two tables: `departments` and `employees`.

#### **Create the `departments` Table**

```sql
CREATE TABLE departments (
    DepartmentID SERIAL PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);
```

#### **Create the `employees` Table**

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    DepartmentID INTEGER REFERENCES departments(DepartmentID),
    HireDate DATE DEFAULT CURRENT_DATE
);
```

---

### **Step 2: Inserting Multiple Rows**

#### **Insert Data into `departments`**

```sql
INSERT INTO departments (DepartmentName)
VALUES
    ('Engineering'),
    ('Marketing'),
    ('Sales'),
    ('Human Resources');
```

#### **Insert Data into `employees`**

```sql
INSERT INTO employees (Name, Role, DepartmentID, HireDate)
VALUES
    ('Alice Johnson', 'Developer', 1, '2024-06-01'),
    ('Bob Smith', 'Manager', 2, '2024-06-10'),
    ('Catherine Lee', 'Sales Executive', 3, '2024-06-15'),
    ('David Brown', 'QA Engineer', 1, '2024-07-01'),
    ('Eve Adams', 'HR Specialist', 4, '2024-07-05');
```

---

### **Step 3: Querying Data**

Now that we've inserted data, let's query it using different `SELECT` statements.

---

#### **1. Select All Data**

Retrieve all rows and columns from the `employees` table.

```sql
SELECT * FROM employees;
```

**Output:**

| EmployeeID | Name          | Role            | DepartmentID | HireDate   |
| ---------- | ------------- | --------------- | ------------ | ---------- |
| 1          | Alice Johnson | Developer       | 1            | 2024-06-01 |
| 2          | Bob Smith     | Manager         | 2            | 2024-06-10 |
| 3          | Catherine Lee | Sales Executive | 3            | 2024-06-15 |
| 4          | David Brown   | QA Engineer     | 1            | 2024-07-01 |
| 5          | Eve Adams     | HR Specialist   | 4            | 2024-07-05 |

---

#### **2. Select Specific Columns**

Retrieve only the names and roles of employees.

```sql
SELECT Name, Role FROM employees;
```

**Output:**

| Name          | Role            |
| ------------- | --------------- |
| Alice Johnson | Developer       |
| Bob Smith     | Manager         |
| Catherine Lee | Sales Executive |
| David Brown   | QA Engineer     |
| Eve Adams     | HR Specialist   |

---

#### **3. Filtering Data with `WHERE`**

Retrieve employees who work in the `Engineering` department (DepartmentID = 1).

```sql
SELECT * FROM employees
WHERE DepartmentID = 1;
```

**Output:**

| EmployeeID | Name          | Role        | DepartmentID | HireDate   |
| ---------- | ------------- | ----------- | ------------ | ---------- |
| 1          | Alice Johnson | Developer   | 1            | 2024-06-01 |
| 4          | David Brown   | QA Engineer | 1            | 2024-07-01 |

---

#### **4. Using `JOIN` to Combine Tables**

Retrieve employee names along with their department names.

```sql
SELECT e.Name, e.Role, d.DepartmentName, e.HireDate
FROM employees e
JOIN departments d ON e.DepartmentID = d.DepartmentID;
```

**Output:**

| Name          | Role            | DepartmentName  | HireDate   |
| ------------- | --------------- | --------------- | ---------- |
| Alice Johnson | Developer       | Engineering     | 2024-06-01 |
| Bob Smith     | Manager         | Marketing       | 2024-06-10 |
| Catherine Lee | Sales Executive | Sales           | 2024-06-15 |
| David Brown   | QA Engineer     | Engineering     | 2024-07-01 |
| Eve Adams     | HR Specialist   | Human Resources | 2024-07-05 |

---

#### **5. Filtering with Conditions**

Retrieve employees hired after June 15, 2024.

```sql
SELECT Name, HireDate
FROM employees
WHERE HireDate > '2024-06-15';
```

**Output:**

| Name        | HireDate   |
| ----------- | ---------- |
| David Brown | 2024-07-01 |
| Eve Adams   | 2024-07-05 |

---

### **Using `ORDER BY` to Sort Data**

Retrieve employees sorted by their hire date in ascending order.

```sql
SELECT Name, Role, HireDate
FROM employees
ORDER BY HireDate ASC;
```

**Output:**

| Name          | Role            | HireDate   |
| ------------- | --------------- | ---------- |
| Alice Johnson | Developer       | 2024-06-01 |
| Bob Smith     | Manager         | 2024-06-10 |
| Catherine Lee | Sales Executive | 2024-06-15 |
| David Brown   | QA Engineer     | 2024-07-01 |
| Eve Adams     | HR Specialist   | 2024-07-05 |

---

### **Combining Multiple Conditions with `AND` & `OR`**

Retrieve employees who are either developers or QA engineers.

```sql
SELECT Name, Role
FROM employees
WHERE Role = 'Developer' OR Role = 'QA Engineer';
```

**Output:**

| Name          | Role        |
| ------------- | ----------- |
| Alice Johnson | Developer   |
| David Brown   | QA Engineer |

---

### **Exercises**

#### **Exercise 1: Insert New Departments and Employees**

1. Insert the following departments into the `departments` table:

   - **Finance**
   - **Operations**

   ```sql
   INSERT INTO departments (DepartmentName)
   VALUES ('Finance'), ('Operations');
   ```

2. Insert the following employees into the `employees` table:

   - **Name**: "Frank White", **Role**: "Accountant", **DepartmentID**: 5 (Finance), **Hire Date**: "2024-08-01"
   - **Name**: "Grace Black", **Role**: "Operations Manager", **DepartmentID**: 6 (Operations), **Hire Date**: "2024-08-10"

   ```sql
   INSERT INTO employees (Name, Role, DepartmentID, HireDate)
   VALUES
       ('Frank White', 'Accountant', 5, '2024-08-01'),
       ('Grace Black', 'Operations Manager', 6, '2024-08-10');
   ```

---

#### **Exercise 2: Query Employees by Department**

Retrieve all employees who work in the **Finance** department.

```sql
SELECT e.Name, e.Role, d.DepartmentName
FROM employees e
JOIN departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Finance';
```

---

### **Summary**

- **Insert Data**: Use `INSERT INTO` to add multiple rows to a table.
- **Query Data**: Use `SELECT` with options like `WHERE`, `JOIN`, `ORDER BY`, `AND`, and `OR` to retrieve and filter data.
- **Practice**: Combining `INSERT` and `SELECT` helps solidify your understanding of data manipulation in PostgreSQL.

Let me know if you need further clarification or additional exercises! 😊
