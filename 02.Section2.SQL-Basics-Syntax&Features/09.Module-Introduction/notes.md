# **Section 2: SQL Basics Syntax & Features**

## **9. Module Introduction**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29269530#overview)

### **What You'll Learn in This Module**

In this module, you’ll explore the fundamental syntax and features of SQL, focusing on the essential building blocks required to query and manipulate data in relational databases.

#### **Key Topics Covered**

1. **Basic SQL Syntax**:
   - Writing simple SQL statements.
   - Understanding keywords like `SELECT`, `FROM`, and `WHERE`.
2. **Data Retrieval**:
   - Fetching data from a database using `SELECT`.
   - Applying filters and conditions using `WHERE`.
3. **Sorting and Limiting**:

   - Using `ORDER BY` to sort data.
   - Restricting the number of rows returned using `LIMIT`.

4. **Basic Data Manipulation**:

   - Adding data to tables (`INSERT`).
   - Updating existing data (`UPDATE`).
   - Deleting data (`DELETE`).

5. **Core Features of SQL**:
   - Case insensitivity.
   - The importance of semicolons (`;`) to terminate commands.
   - Comments in SQL for readability.

---

#### **Important Keywords & Definitions**

1. **SELECT**: A command to retrieve specific data from a database.
2. **FROM**: Specifies the table from which to retrieve the data.
3. **WHERE**: Adds conditions to filter the data retrieved.
4. **ORDER BY**: Sorts the data in ascending or descending order.
5. **LIMIT**: Restricts the number of rows returned in a query.
6. **INSERT**: Adds new data into a table.
7. **UPDATE**: Modifies existing data in a table.
8. **DELETE**: Removes data from a table.
9. **Semicolon (`;`)**: Indicates the end of an SQL statement.
10. **Comment**: A way to document your SQL code using `--` for single-line or `/* */` for multi-line comments.

---

### **Exercises**

#### **Exercise 1: Retrieve Data**

- Use the `SELECT` and `FROM` keywords to retrieve all the columns from a table called `Employees`.

```sql
SELECT *
FROM Employees;
```

---

#### **Exercise 2: Filter Data**

- Retrieve data from a table called `Products` where the `Price` is greater than `50`.

```sql
SELECT *
FROM Products
WHERE Price > 50;
```

---

#### **Exercise 3: Sort Data**

- Retrieve all rows from the `Customers` table and sort them by the `LastName` column in ascending order.

```sql
SELECT *
FROM Customers
ORDER BY LastName ASC;
```

---

#### **Exercise 4: Insert Data**

- Add a new row into the `Orders` table with the following values:
  - OrderID: `101`
  - CustomerID: `5`
  - Total: `120.50`

```sql
INSERT INTO Orders (OrderID, CustomerID, Total)
VALUES (101, 5, 120.50);
```

---

#### **Exercise 5: Update Data**

- Update the `Total` value to `150.00` for the row in the `Orders` table where `OrderID` is `101`.

```sql
UPDATE Orders
SET Total = 150.00
WHERE OrderID = 101;
```

---

#### **Exercise 6: Delete Data**

- Remove the row from the `Orders` table where `OrderID` is `101`.

```sql
DELETE FROM Orders
WHERE OrderID = 101;
```

---

### **Next Steps**

Practice these commands using a sample database and experiment with variations. Let me know if you’d like help setting up a practice environment or creating additional exercises!
