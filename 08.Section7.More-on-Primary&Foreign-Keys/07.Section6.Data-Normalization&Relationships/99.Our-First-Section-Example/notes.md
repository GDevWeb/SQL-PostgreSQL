# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## 📚 **99. Our First Section Example**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877106#overview)
- [Udemy - screen exercise - tables](img/tables.png)

---

### **Goal of the Module**

In this module, we’ll work through a practical example to reinforce concepts of **data normalization**. You’ll learn how to analyze a dataset, normalize it into related tables, and establish relationships using keys.

---

### 🛠️ **Example Scenario: E-Commerce Database**

Imagine you’re designing a database for an e-commerce platform. Initially, all data is stored in one large table:

| **OrderID** | **CustomerName** | **ProductName** | **Category** | **Quantity** | **Price** | **OrderDate** |
| ----------- | ---------------- | --------------- | ------------ | ------------ | --------- | ------------- |
| 1           | John Doe         | Laptop          | Electronics  | 1            | 1200.00   | 2024-01-01    |
| 2           | Jane Smith       | Smartphone      | Electronics  | 2            | 800.00    | 2024-01-02    |
| 3           | John Doe         | Keyboard        | Accessories  | 3            | 50.00     | 2024-01-03    |

---

### 🔄 **Normalization Process**

#### 1. **Analyze the Data**

- Repeating **CustomerName** for each order.
- Repeating **ProductName** and **Category** for products.
- If a product’s price changes, it must be updated across multiple rows.

#### 2. **Split the Data**

- Separate data into focused tables:
  - **Customers Table**: Contains customer information.
  - **Products Table**: Contains product details like category and price.
  - **Orders Table**: Links customers to products with quantities and dates.

---

### 🗃️ **Normalized Tables**

#### **Customers Table**

| **CustomerID** | **CustomerName** |
| -------------- | ---------------- |
| 1              | John Doe         |
| 2              | Jane Smith       |

#### **Products Table**

| **ProductID** | **ProductName** | **Category** | **Price** |
| ------------- | --------------- | ------------ | --------- |
| 1             | Laptop          | Electronics  | 1200.00   |
| 2             | Smartphone      | Electronics  | 800.00    |
| 3             | Keyboard        | Accessories  | 50.00     |

#### **Orders Table**

| **OrderID** | **CustomerID** | **ProductID** | **Quantity** | **OrderDate** |
| ----------- | -------------- | ------------- | ------------ | ------------- |
| 1           | 1              | 1             | 1            | 2024-01-01    |
| 2           | 2              | 2             | 2            | 2024-01-02    |
| 3           | 1              | 3             | 3            | 2024-01-03    |

---

### 🧩 **SQL Implementation**

#### **Create Tables**

```sql
-- Customers Table
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) CHECK (Price > 0)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    ProductID INT REFERENCES Products(ProductID),
    Quantity INT CHECK (Quantity > 0),
    OrderDate DATE DEFAULT CURRENT_DATE
);
```

---

#### **Insert Data**

```sql
-- Insert into Customers
INSERT INTO Customers (CustomerName) VALUES
('John Doe'),
('Jane Smith');

-- Insert into Products
INSERT INTO Products (ProductName, Category, Price) VALUES
('Laptop', 'Electronics', 1200.00),
('Smartphone', 'Electronics', 800.00),
('Keyboard', 'Accessories', 50.00);

-- Insert into Orders
INSERT INTO Orders (CustomerID, ProductID, Quantity, OrderDate) VALUES
(1, 1, 1, '2024-01-01'),
(2, 2, 2, '2024-01-02'),
(1, 3, 3, '2024-01-03');
```

---

#### **Query Relationships**

1. Retrieve all orders with customer names and product details:

```sql
SELECT
    o.OrderID,
    c.CustomerName,
    p.ProductName,
    p.Category,
    p.Price,
    o.Quantity,
    o.OrderDate
FROM
    Orders o
JOIN
    Customers c ON o.CustomerID = c.CustomerID
JOIN
    Products p ON o.ProductID = p.ProductID;
```

---

### 📝 **Practice Tasks**

1. Add a new customer and their orders to the database.
2. Add a new product and link it to existing orders.
3. Write a query to retrieve:
   - The total amount spent by each customer.
   - Products ordered more than once.

---

Let me know when you’re ready to move to **Module 100: Creating Tables With Relations**, or if you want to practice this further! 😊
