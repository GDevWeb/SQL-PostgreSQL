# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## **105. Data Joining & Filtering**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877130#overview)
- [Udemy]()

---

### **Objective**

Learn how to combine multiple tables using **JOINs** and apply **filters** to retrieve specific results.

---

### **Step-by-Step Guide**

#### **Concept Recap**

1. **JOINing Data**:

   - Use `INNER JOIN` to combine rows from two or more tables where there is a match based on a common column.
   - Extend the query with multiple `JOINs` to include additional tables.

2. **Filtering Results**:

   - Use the `WHERE` clause to add conditions.
   - Apply filters on specific columns (e.g., `Price`, `Quantity`, `CustomerName`).

3. **Combining JOINs with Filters**:
   - After joining tables, add conditions to narrow down the results based on one or more criteria.

---

### **Example Scenario**

We’ll work with these tables:

1. **Customers**:
   - Columns: `CustomerID`, `CustomerName`
2. **Orders**:
   - Columns: `OrderID`, `CustomerID`, `OrderDate`
3. **OrderDetails**:
   - Columns: `OrderDetailID`, `OrderID`, `ProductID`, `Quantity`
4. **Products**:
   - Columns: `ProductID`, `ProductName`, `Price`

---

### **Practice Queries**

#### **Query 1: Retrieve Specific Customer Orders**

- Retrieve the following:
  - Customer name.
  - Order date.
  - Product name.
  - Quantity.
  - Total price for each order.
- Add a filter to include only orders where the total price exceeds `$500`.

```sql
SELECT
    c.CustomerName,
    o.OrderDate,
    p.ProductName,
    od.Quantity,
    (od.Quantity * p.Price) AS TotalPrice
FROM
    Customers c
INNER JOIN
    Orders o ON c.CustomerID = o.CustomerID
INNER JOIN
    OrderDetails od ON o.OrderID = od.OrderID
INNER JOIN
    Products p ON od.ProductID = p.ProductID
WHERE
    (od.Quantity * p.Price) > 500;
```

---

#### **Query 2: Retrieve Recent Orders**

- Retrieve only orders placed in the last 30 days.

```sql
SELECT
    c.CustomerName,
    o.OrderDate,
    p.ProductName,
    od.Quantity,
    (od.Quantity * p.Price) AS TotalPrice
FROM
    Customers c
INNER JOIN
    Orders o ON c.CustomerID = o.CustomerID
INNER JOIN
    OrderDetails od ON o.OrderID = od.OrderID
INNER JOIN
    Products p ON od.ProductID = p.ProductID
WHERE
    o.OrderDate > CURRENT_DATE - INTERVAL '30 days';
```

---

#### **Query 3: Retrieve Orders for a Specific Customer**

- Retrieve all orders for a customer with a specific name (e.g., "Alice Smith").

```sql
SELECT
    c.CustomerName,
    o.OrderDate,
    p.ProductName,
    od.Quantity,
    (od.Quantity * p.Price) AS TotalPrice
FROM
    Customers c
INNER JOIN
    Orders o ON c.CustomerID = o.CustomerID
INNER JOIN
    OrderDetails od ON o.OrderID = od.OrderID
INNER JOIN
    Products p ON od.ProductID = p.ProductID
WHERE
    c.CustomerName = 'Alice Smith';
```

---

### 🛠️ **Practice Tasks**

#### **Task 1: Find Top Spending Customers**

- Group data by customers.
- Calculate the total amount spent by each customer.
- Filter results to show customers who spent more than `$1000`.

#### **Task 2: Filter by Product Category**

- Assuming there’s a `Category` column in the `Products` table:
  - Retrieve all orders for products in a specific category (e.g., "Electronics").

#### **Task 3: Sort Results**

- Retrieve all orders and sort them by `TotalPrice` in descending order.

---

### 🔍 **Output Example**

For Query 1:

| CustomerName | OrderDate  | ProductName | Quantity | TotalPrice |
| ------------ | ---------- | ----------- | -------- | ---------- |
| Alice Smith  | 2024-12-20 | Laptop      | 1        | 1200.00    |
| Bob Johnson  | 2024-12-21 | Smartphone  | 1        | 800.00     |

---

Once you’ve practiced these, let me know, and we’ll proceed to **Module 106: Introducing LEFT JOIN**! 😊
