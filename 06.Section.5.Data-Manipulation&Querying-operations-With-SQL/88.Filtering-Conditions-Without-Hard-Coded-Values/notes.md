# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 88: Filtering Conditions Without Hard-Coded Values** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28981046#overview)

---

### 🚀 **Goal of This Module**

In this module, you'll learn how to filter data by comparing **columns with other columns**, rather than using hard-coded values. This technique allows for more dynamic and flexible queries, especially when working with data that needs to be compared against other data within the same table.

---

### 🛠️ **Why Compare Columns?**

- **Dynamic Comparisons**: Instead of fixed values, compare data points within rows.
- **Flexible Queries**: Easily adapt to changes in data without modifying the query.
- **Useful for Conditions**: Identify rows where one column value exceeds, matches, or falls below another column value.

---

### ✅ **Basic Syntax**

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column1 operator column2;
```

- **`operator`**: The comparison operator (`=`, `<>`, `>`, `<`, `>=`, `<=`).

---

### 🔍 **Examples**

Let’s use the following `employees` table for our examples:

```sql
CREATE TABLE IF NOT EXISTS employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary INTEGER NOT NULL,
    expected_salary INTEGER NOT NULL
);
```

#### Sample Data:

| **id** | **name**      | **salary** | **expected_salary** |
| ------ | ------------- | ---------- | ------------------- |
| 1      | Alice Johnson | 55000      | 50000               |
| 2      | Bob Smith     | 45000      | 50000               |
| 3      | Jane Doe      | 70000      | 70000               |
| 4      | David Brown   | 60000      | 65000               |
| 5      | Emma Wilson   | 75000      | 70000               |

---

### ✅ **1. Filter Rows Where Salary Exceeds Expected Salary**

```sql
SELECT * FROM employees
WHERE salary > expected_salary;
```

✅ **Result**:

| **id** | **name**      | **salary** | **expected_salary** |
| ------ | ------------- | ---------- | ------------------- |
| 1      | Alice Johnson | 55000      | 50000               |
| 5      | Emma Wilson   | 75000      | 70000               |

---

### ✅ **2. Filter Rows Where Salary is Less Than Expected Salary**

```sql
SELECT * FROM employees
WHERE salary < expected_salary;
```

✅ **Result**:

| **id** | **name**    | **salary** | **expected_salary** |
| ------ | ----------- | ---------- | ------------------- |
| 2      | Bob Smith   | 45000      | 50000               |
| 4      | David Brown | 60000      | 65000               |

---

### ✅ **3. Filter Rows Where Salary Equals Expected Salary**

```sql
SELECT * FROM employees
WHERE salary = expected_salary;
```

✅ **Result**:

| **id** | **name** | **salary** | **expected_salary** |
| ------ | -------- | ---------- | ------------------- |
| 3      | Jane Doe | 70000      | 70000               |

---

### 🔄 **Combining Conditions**

You can combine column comparisons with logical operators like `AND` and `OR`.

#### Example: Filter Employees Who Are Underpaid or Have a Salary Equal to Their Expected Salary

```sql
SELECT * FROM employees
WHERE salary < expected_salary OR salary = expected_salary;
```

✅ **Result**:

| **id** | **name**    | **salary** | **expected_salary** |
| ------ | ----------- | ---------- | ------------------- |
| 2      | Bob Smith   | 45000      | 50000               |
| 3      | Jane Doe    | 70000      | 70000               |
| 4      | David Brown | 60000      | 65000               |

---

### 📝 **Practice Tasks**

1. **Find Overpaid Employees**:  
   Retrieve employees whose `salary` is greater than their `expected_salary`.

2. **Find Underpaid Employees**:  
   Retrieve employees whose `salary` is less than their `expected_salary`.

3. **Find Employees Paid Exactly as Expected**:  
   Retrieve employees whose `salary` matches their `expected_salary`.

4. **Combine Conditions**:  
   Retrieve employees who are either **underpaid** or **paid exactly as expected**.

---

### 🌟 **Summary**

- You can compare columns directly in the `WHERE` clause (e.g., `salary > expected_salary`).
- This approach avoids hard-coded values and makes your queries more dynamic.
- Combine these comparisons with logical operators like `AND` and `OR` for more complex conditions.

By mastering column-to-column comparisons, you can write more flexible and powerful queries! 🚀😊
