# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877110#overview)

### 📚 **101. Inserting Related Data**

---

#### **Goal of the Module**

This module focuses on inserting data into related tables in a normalized database. You'll learn how to ensure data integrity and establish relationships between rows in different tables using **foreign keys**.

---

### 🛠️ **Key Concepts**

1. **Order of Insertion**:

   - Insert data into parent tables first (tables referenced by foreign keys).
   - Then insert data into child tables.

2. **Referential Integrity**:

   - Ensure that foreign key values in child tables match primary key values in parent tables.

3. **Example Workflow**:
   - Insert data into `Customers` and `Products`.
   - Insert data into `Orders`.
   - Insert data into `OrderDetails` to link orders and products.

---

### 🔄 **Example Scenario: E-Commerce Database**

#### Tables and Relationships

1. **Customers Table**: Stores customer information.
2. **Products Table**: Stores product details.
3. **Orders Table**: Stores customer orders.
4. **OrderDetails Table**: Links orders to products with quantity details.

---

### 🗃️ **Step-by-Step Data Insertion**

#### 1. **Insert Customers**

```sql
INSERT INTO Customers (CustomerName) VALUES
('Alice Smith'),
('Bob Johnson');
```

---

#### 2. **Insert Products**

```sql
INSERT INTO Products (ProductName, Price) VALUES
('Laptop', 1200.00),
('Smartphone', 800.00),
('Keyboard', 50.00);
```

---

#### 3. **Insert Orders**

```sql
INSERT INTO Orders (CustomerID, OrderDate) VALUES
(1, '2024-12-20'),  -- Alice's Order
(2, '2024-12-21');  -- Bob's Order
```

---

#### 4. **Insert Order Details**

```sql
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES
(1, 1, 1),  -- Alice ordered 1 Laptop
(1, 3, 2),  -- Alice ordered 2 Keyboards
(2, 2, 1);  -- Bob ordered 1 Smartphone
```

---

### 🔍 **Querying the Data**

#### 1. **Retrieve Orders with Customer Names**

```sql
SELECT
    o.OrderID,
    c.CustomerName,
    o.OrderDate
FROM
    Orders o
JOIN
    Customers c ON o.CustomerID = c.CustomerID;
```

---

#### 2. **Retrieve Order Details with Product Information**

```sql
SELECT
    od.OrderID,
    p.ProductName,
    od.Quantity,
    (od.Quantity * p.Price) AS TotalPrice
FROM
    OrderDetails od
JOIN
    Products p ON od.ProductID = p.ProductID;
```

---

#### 3. **Full Summary of Orders**

```sql
SELECT
    o.OrderID,
    c.CustomerName,
    p.ProductName,
    od.Quantity,
    (od.Quantity * p.Price) AS TotalPrice,
    o.OrderDate
FROM
    Orders o
JOIN
    Customers c ON o.CustomerID = c.CustomerID
JOIN
    OrderDetails od ON o.OrderID = od.OrderID
JOIN
    Products p ON od.ProductID = p.ProductID;
```

---

### 📝 **Practice Tasks**

1. **Add More Data**:

   - Insert a new customer and their order into the database.
   - Add a new product and link it to an existing order.

2. **Write Queries**:

   - Calculate the total amount spent by each customer.
   - Retrieve all orders placed on a specific date.

3. **Verify Referential Integrity**:
   - Try inserting invalid data (e.g., an `OrderID` or `ProductID` that doesn’t exist in the parent table) and observe the behavior.

---

### **Next Steps**

Once you’ve practiced inserting related data and querying it, let me know, and we’ll proceed to **Module 102: Joining Data & Introducing INNER JOIN**! 😊
