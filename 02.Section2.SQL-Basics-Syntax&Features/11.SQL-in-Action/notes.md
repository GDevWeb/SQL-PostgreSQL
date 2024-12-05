# 02.Section2.SQL-Basics-Syntax&Features

## **11. SQL in Action**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29340830#overview)

---

### **What is "SQL in Action"?**

This section demonstrates how SQL is applied in real-world scenarios to solve common problems, such as retrieving specific data, performing calculations, and managing relationships between tables. The goal is to show SQL in practical use cases to help solidify your understanding.

---

### **Practical Examples of SQL in Action**

#### **1. Basic Data Retrieval**

Retrieve the `Name` and `Email` of all customers in the `Customers` table:

```sql
SELECT Name, Email
FROM Customers;
```

---

#### **2. Filtering Data with Conditions**

Retrieve all products from the `Products` table where the `Price` is greater than `50` and `Stock` is more than `10`:

```sql
SELECT ProductName, Price, Stock
FROM Products
WHERE Price > 50 AND Stock > 10;
```

---

#### **3. Using Aggregates for Insights**

Find the average price of all products in the `Products` table:

```sql
SELECT AVG(Price) AS AveragePrice
FROM Products;
```

---

#### **4. Sorting and Limiting Results**

Retrieve the top 5 most expensive products:

```sql
SELECT ProductName, Price
FROM Products
ORDER BY Price DESC
LIMIT 5;
```

---

#### **5. Combining Data Across Tables**

List all orders along with the customer name for each order using a **JOIN**:

```sql
SELECT Orders.OrderID, Customers.Name, Orders.Total
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
```

---

#### **6. Updating Data**

Update the stock of a product (e.g., `Laptop`) to `50`:

```sql
UPDATE Products
SET Stock = 50
WHERE ProductName = 'Laptop';
```

---

#### **7. Deleting Data**

Remove all orders where the total is less than `100`:

```sql
DELETE FROM Orders
WHERE Total < 100;
```

---

### **Real-World Use Case Example**

**Scenario**: A small e-commerce store wants to generate a sales report.  
**Goal**: Retrieve the total revenue and the top 3 selling products.

**Step 1: Calculate Total Revenue**

```sql
SELECT SUM(Total) AS TotalRevenue
FROM Orders;
```

**Step 2: Find the Top 3 Selling Products**

```sql
SELECT ProductName, SUM(Quantity) AS TotalSold
FROM OrderDetails
GROUP BY ProductName
ORDER BY TotalSold DESC
LIMIT 3;
```

---

### **Important Keywords & Definitions**

1. **JOIN**: Combines rows from two or more tables based on a related column.
2. **AVG()**: A function to calculate the average value of a column.
3. **SUM()**: A function to calculate the total value of a column.
4. **GROUP BY**: Groups rows sharing a common value into summary rows.
5. **AS**: Renames a column or table in the query output (aliasing).

---

### **Exercises**

#### **Exercise 1: Aggregate Functions**

Find the total number of products in the `Products` table:

```sql
SELECT COUNT(*) AS TotalProducts
FROM Products;
```

---

#### **Exercise 2: Filtering and Sorting**

Retrieve all customers who registered after `2022-01-01` and sort them by `Name` in ascending order:

```sql
SELECT Name, RegistrationDate
FROM Customers
WHERE RegistrationDate > '2022-01-01'
ORDER BY Name ASC;
```

---

#### **Exercise 3: Combining Data**

List all products along with the name of their supplier from the `Products` and `Suppliers` tables:

```sql
SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;
```

---

#### **Exercise 4: Updating Data**

Increase the price of all products by 10% where the current price is less than `20`:

```sql
UPDATE Products
SET Price = Price * 1.10
WHERE Price < 20;
```

---

### **Next Steps**

1. Practice these queries on a sample database.
2. Try combining multiple queries to solve complex problems.
3. Let me know if you need help setting up more realistic use cases or generating sample data for practice!
