# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## 📚 **100. Creating Tables With Relations**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877110#overview)

---

### **Goal of the Module**

This module focuses on creating **related tables** in SQL, leveraging **primary keys** and **foreign keys** to establish relationships. You'll learn how to define these relationships, ensuring data consistency and enabling seamless querying across tables.

---

### 🛠️ **Key Concepts**

1. **Primary Key**:

   - A column (or set of columns) that uniquely identifies a row in a table.
   - Every table should have a primary key.

   ```sql
   CREATE TABLE Customers (
       CustomerID SERIAL PRIMARY KEY,
       CustomerName VARCHAR(100)
   );
   ```

2. **Foreign Key**:

   - A column in one table that links to a primary key in another table.
   - Ensures referential integrity between tables.

   ```sql
   CREATE TABLE Orders (
       OrderID SERIAL PRIMARY KEY,
       CustomerID INT REFERENCES Customers(CustomerID)
   );
   ```

3. **One-to-Many Relationship**:

   - Example: One customer can place multiple orders.
   - Implemented by linking the `CustomerID` in the `Orders` table to the `Customers` table.

4. **Many-to-Many Relationship**:
   - Example: A single product can be part of multiple orders, and an order can contain multiple products.
   - Requires an intermediate table, like `OrderDetails`.

---

### 🔄 **Example Scenario: E-Commerce Database**

#### Tables and Relationships:

1. **Customers Table**:

   - Contains customer information.

2. **Products Table**:

   - Stores product details.

3. **Orders Table**:

   - Links customers to orders.

4. **OrderDetails Table**:
   - Links orders to products and tracks the quantity of each product in an order.

---

### 🗃️ **SQL Implementation**

#### 1. **Customers Table**

```sql
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
);
```

---

#### 2. **Products Table**

```sql
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0)
);
```

---

#### 3. **Orders Table**

```sql
CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    OrderDate DATE DEFAULT CURRENT_DATE NOT NULL
);
```

---

#### 4. **OrderDetails Table**

```sql
CREATE TABLE IF NOT EXISTS OrderDetails (
    OrderDetailID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    ProductID INT REFERENCES Products(ProductID),
    Quantity INT CHECK (Quantity > 0)
);
```

##### 4.1. `postgres` - create a specific query to calculate TotalPrice

```sql

SELECT
    od.OrderDetailID,
    od.OrderID,
    od.ProductID,
    p.ProductName,
    od.Quantity,
    (od.Quantity * p.Price) AS TotalPrice
FROM
    OrderDetails od
JOIN
    Products p ON od.ProductID = p.ProductID;


```

---

### 🧩 **Practice Tasks**

#### **Task 1: Create the Tables**

Using the SQL statements above, create the following tables:

1. `Customers`
2. `Products`
3. `Orders`
4. `OrderDetails`

---

#### **Task 2: Insert Sample Data**

Populate the tables with the following data:

- **Customers**:

  - `Alice Smith`
  - `Bob Johnson`

- **Products**:

  - Laptop: $1200.00
  - Smartphone: $800.00
  - Keyboard: $50.00

- **Orders**:

  - Alice placed an order on 2024-12-20.
  - Bob placed an order on 2024-12-21.

- **OrderDetails**:
  - Alice ordered 1 Laptop and 2 Keyboards.
  - Bob ordered 1 Smartphone.

---

#### **Task 3: Query Relationships**

Write queries to:

1. Retrieve all orders with customer names and product details.
2. Calculate the total amount spent by each customer.

---

### **Next Steps**

Once you’ve practiced creating these tables and their relationships, let me know, and we’ll proceed to **Module 101: Inserting Related Data**! 😊
