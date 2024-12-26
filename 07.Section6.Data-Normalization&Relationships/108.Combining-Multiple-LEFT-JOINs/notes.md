# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## **108. Combining Multiple LEFT JOINs**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877144#overview)

---

### **Objective**:

Learn how to chain multiple **LEFT JOINs** in a single query to retrieve data across several related tables, even when some records are missing in certain tables.

---

### **Key Concepts**

1. **Multiple LEFT JOINs**:

   - Use multiple `LEFT JOINs` to connect multiple tables.
   - Each `LEFT JOIN` preserves all rows from the table on the left, with `NULL` values for unmatched rows in the right table.

2. **Use Cases**:
   - Fetch comprehensive information, even if some data is incomplete.
   - Analyze scenarios like customers without orders, or products not yet ordered.

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

### 🛠️ **Practice Queries**

#### **Query 1: Combine Customers, Orders, and Products**

- Retrieve customer names, order IDs, order dates, product names, and quantities.
- Include customers who have no orders and orders with no products.

```sql
SELECT
    c.CustomerName,
    o.OrderID,
    o.OrderDate,
    p.ProductName,
    od.Quantity
FROM
    Customers c
LEFT JOIN
    Orders o ON c.CustomerID = o.CustomerID
LEFT JOIN
    OrderDetails od ON o.OrderID = od.OrderID
LEFT JOIN
    Products p ON od.ProductID = p.ProductID;
```

---

#### **Query 2: Find Products Not Ordered**

- Retrieve all products and their order details.
- Include products that haven’t been ordered yet.

```sql
SELECT
    p.ProductName,
    od.Quantity,
    o.OrderID
FROM
    Products p
LEFT JOIN
    OrderDetails od ON p.ProductID = od.ProductID
LEFT JOIN
    Orders o ON od.OrderID = o.OrderID
WHERE
    o.OrderID IS NULL;
```

---

#### **Query 3: Retrieve Orders Without Details**

- Retrieve all orders, even if they don’t have associated order details.

```sql
SELECT
    o.OrderID,
    o.OrderDate,
    c.CustomerName,
    p.ProductName,
    od.Quantity
FROM
    Orders o
LEFT JOIN
    Customers c ON o.CustomerID = c.CustomerID
LEFT JOIN
    OrderDetails od ON o.OrderID = od.OrderID
LEFT JOIN
    Products p ON od.ProductID = p.ProductID;
```

---

#### **Query 4: Group Data**

- Calculate the total quantity ordered for each customer.
- Include customers who haven’t placed any orders.

```sql
SELECT
    c.CustomerName,
    SUM(od.Quantity) AS TotalQuantity
FROM
    Customers c
LEFT JOIN
    Orders o ON c.CustomerID = o.CustomerID
LEFT JOIN
    OrderDetails od ON o.OrderID = od.OrderID
GROUP BY
    c.CustomerName;
```

---

### 🧩 **Practice Tasks**

1. **Join All Tables**:

   - Combine `Customers`, `Orders`, `OrderDetails`, and `Products` to display:
     - Customer names.
     - Order dates.
     - Product names.
     - Quantities.

2. **Identify Missing Data**:

   - Find all customers who haven’t placed any orders and all products that haven’t been ordered.

3. **Advanced Filtering**:
   - Retrieve orders placed in the last 30 days and include products not ordered yet.

---

### 🔍 **Output Example**

For Query 1:

| CustomerName | OrderID | OrderDate  | ProductName | Quantity |
| ------------ | ------- | ---------- | ----------- | -------- |
| Alice Smith  | 1       | 2024-12-20 | Laptop      | 1        |
| Bob Johnson  | NULL    | NULL       | NULL        | NULL     |

---

Once you’ve completed these queries, let me know, and we’ll move on to **Module 109: What About RIGHT JOIN?** 😊
