# 02.Section2.SQL-Basics-Syntax&Features

## **12. The Core SQL Rules**

### **Core SQL Syntax Rules**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29483174#overview)
- [schema - core qsl syntax rules]()

1. **SQL Statements Must End with Semicolons**:

   - If a command contains multiple SQL statements, each statement must end with a semicolon (`;`).
   - Example:
     ```sql
     SELECT * FROM Customers;
     SELECT * FROM Orders;
     ```

2. **A Single SQL Statement Doesn’t Always Need a Semicolon**:

   - When executing a single statement in tools like MySQL or PostgreSQL, a semicolon is optional. However, it’s a good practice to include it.

3. **SQL Statements Are Case-Insensitive**:

   - SQL keywords like `SELECT`, `FROM`, and `WHERE` can be written in uppercase or lowercase. Both are valid.
   - Example:
     ```sql
     SELECT * FROM Customers;
     select * from customers;
     ```

4. **Identifiers Can Be Surrounded by Quotes**:

   - Table names, column names, or other identifiers can be surrounded by double quotes (`"`) or backticks (`` ` ``) in MySQL to avoid conflicts with reserved keywords.
   - Example:
     ```sql
     SELECT "Order", `Total` FROM Orders;
     ```

5. **SQL Statements Must Follow Clause Order**:
   - The order of SQL clauses matters for queries to run correctly.
   - Correct order: `SELECT` → `FROM` → `WHERE` → `GROUP BY` → `HAVING` → `ORDER BY` → `LIMIT`.
   - Example:
     ```sql
     SELECT Name, Age
     FROM Employees
     WHERE Age > 30
     ORDER BY Name ASC;
     ```

---

### **Important Keywords & Definitions**

1. **Semicolon (`;`)**: Indicates the end of an SQL statement.
2. **Case-Insensitive**: SQL commands can be written in uppercase or lowercase without affecting functionality.
3. **Clause Order**: The required sequence in which SQL commands must appear in a query for it to execute correctly.

---

### **Exercises**

#### **Exercise 1: Write a Query with Proper Clause Order**

Retrieve the `Name` and `Salary` of all employees from the `Employees` table, sorted by `Salary` in descending order.

```sql
SELECT Name, Salary
FROM Employees
ORDER BY Salary DESC;
```

---

#### **Exercise 2: Use Quotes Around Identifiers**

Retrieve the `OrderID` and `Total` from a table named `Orders` where `Total` exceeds 100. Use quotes for column names.

```sql
SELECT "OrderID", "Total"
FROM Orders
WHERE "Total" > 100;
```

---

#### **Exercise 3: Experiment with Case-Insensitive Queries**

Write a query in lowercase to retrieve all rows from the `Products` table.

```sql
select * from products;
```

---

### **Next Steps**

Practice these exercises to ensure you understand the core rules and syntax of SQL. Let me know if you'd like more examples or help debugging queries!
