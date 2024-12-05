# 02.Section2.SQL-Basics-Syntax&Features

## **10. Understanding The Core SQL Syntax**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29269536#overview)
- [schema - core SQL syntax rules](pdf/core-sql-syntax-rules.png)

---

#### **What is Core SQL Syntax?**

The **core SQL syntax** consists of the foundational commands and structure needed to interact with a relational database. These commands allow you to retrieve, filter, modify, and manage data efficiently.

---

#### Schema

<div style="text-align:center;">
<img src="pdf/core-sql-syntax-rules.png" style="border-radius:10px";/>
</div>

#### **Key SQL Statement Structure**

A basic SQL query follows this structure:

```sql
SELECT column1, column2
FROM table_name
WHERE condition
ORDER BY column1 ASC|DESC
LIMIT number;
```

---

### **Breaking Down the Syntax**

1. **`SELECT`**:

   - Used to choose the data you want to retrieve.
   - Example:
     ```sql
     SELECT Name, Age FROM Students;
     ```

2. **`FROM`**:

   - Specifies the table to retrieve data from.
   - Example:
     ```sql
     SELECT * FROM Employees;
     ```

3. **`WHERE`**:

   - Adds conditions to filter the rows retrieved.
   - Example:
     ```sql
     SELECT * FROM Orders WHERE Total > 100;
     ```

4. **`ORDER BY`**:

   - Sorts the results based on one or more columns.
   - Example:
     ```sql
     SELECT * FROM Customers ORDER BY LastName DESC;
     ```

5. **`LIMIT`**:

   - Limits the number of rows returned in the result set.
   - Example:
     ```sql
     SELECT * FROM Products LIMIT 10;
     ```

6. **`*`** (Wildcard):

   - Selects all columns from a table.
   - Example:
     ```sql
     SELECT * FROM Employees;
     ```

7. **Comments**:
   - **Single-line comment**:
     ```sql
     -- This is a comment
     SELECT * FROM Customers;
     ```
   - **Multi-line comment**:
     ```sql
     /* This is a
     multi-line comment */
     SELECT * FROM Orders;
     ```

---

### **Examples of Core SQL Syntax**

1. **Retrieve Specific Columns**:

   ```sql
   SELECT FirstName, LastName
   FROM Employees;
   ```

2. **Filter Data with Conditions**:

   ```sql
   SELECT *
   FROM Products
   WHERE Price > 50 AND Stock > 10;
   ```

3. **Sort Data**:

   ```sql
   SELECT *
   FROM Customers
   ORDER BY RegistrationDate ASC;
   ```

4. **Limit Results**:
   ```sql
   SELECT *
   FROM Orders
   LIMIT 5;
   ```

---

### **Important Keywords & Definitions**

1. **SQL**: A language used to interact with relational databases.
2. **SELECT**: Retrieves data from one or more columns in a table.
3. **FROM**: Specifies the table to query data from.
4. **WHERE**: Filters the data based on specified conditions.
5. **ORDER BY**: Sorts the results by a column in ascending (`ASC`) or descending (`DESC`) order.
6. **LIMIT**: Restricts the number of rows returned in the result set.
7. **Wildcard (`*`)**: Represents all columns in a table.

---

### **Exercises**

#### **Exercise 1: Retrieve Data**

Retrieve the `FirstName` and `Email` of all employees in the `Employees` table.

```sql
SELECT FirstName, Email
FROM Employees;
```

---

#### **Exercise 2: Filter Rows**

Retrieve all products from the `Products` table where the `Price` is greater than `20`.

```sql
SELECT *
FROM Products
WHERE Price > 20;
```

---

#### **Exercise 3: Combine Filters**

Retrieve all customers from the `Customers` table who registered after `2023-01-01` and live in `New York`.

```sql
SELECT *
FROM Customers
WHERE RegistrationDate > '2023-01-01'
AND City = 'New York';
```

---

#### **Exercise 4: Sort and Limit**

Retrieve the first 5 rows from the `Orders` table, sorted by `OrderDate` in descending order.

```sql
SELECT *
FROM Orders
ORDER BY OrderDate DESC
LIMIT 5;
```

---

### **Next Steps**

Practice these commands on a sample database and combine them to answer more complex questions. Let me know if you need help setting up a database or creating additional exercises!
