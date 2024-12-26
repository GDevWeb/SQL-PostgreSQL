# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## **107. Using LEFT JOIN**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877140#overview)

---

### **Objective**

Build on your understanding of **LEFT JOIN** by applying it to more complex scenarios. Learn how to combine data from multiple tables and handle cases where no matches exist.

---

### **Key Points**

1. **How LEFT JOIN Works**:

   - Includes all rows from the left table, regardless of whether there is a matching row in the right table.
   - Unmatched columns in the right table return `NULL`.

2. **Real-World Uses**:
   - Identify records without matches in related tables.
   - Analyze missing or incomplete data.

---

### **Example Scenario**

We’ll use these tables:

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

#### **Query 1: Retrieve All Customers and Their Orders**

- Retrieve customer names, order IDs, and order dates.
- Include customers with no orders.

```sql
SELECT
    c.CustomerName,
    o.OrderID,
    o.OrderDate
FROM
    Customers c
LEFT JOIN
    Orders o ON c.CustomerID = o.CustomerID;
```

---

#### **Query 2: Find Customers Without Orders**

- Modify the previous query to find only customers who haven’t placed any orders.

```sql
SELECT
    c.CustomerName
FROM
    Customers c
LEFT JOIN
    Orders o ON c.CustomerID = o.CustomerID
WHERE
    o.OrderID IS NULL;
```

---

#### **Query 3: Combine LEFT JOIN with Additional Tables**

- Retrieve customer names, order IDs, product names, and quantities.
- Show `NULL` for customers without orders.

```sql
SELECT
    c.CustomerName,
    o.OrderID,
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

#### **Task 4: Filter Data**

- Find customers who have placed orders for a specific product (e.g., "Laptop").
- Include customers without orders but set their product details as `NULL`.

```sql
SELECT
    c.CustomerName,
    p.ProductName,
    od.Quantity
FROM
    Customers c
LEFT JOIN
    Orders o ON c.CustomerID = o.CustomerID
LEFT JOIN
    OrderDetails od ON o.OrderID = od.OrderID
LEFT JOIN
    Products p ON od.ProductID = p.ProductID
WHERE
    p.ProductName = 'Laptop' OR p.ProductName IS NULL;
```

---

### 🛠️ **Practice Tasks**

1. Retrieve all products and their orders, even if a product hasn’t been ordered yet.
2. Identify customers who have placed orders with a total quantity of more than 10.
3. Show all orders and include products with no associated details.

---

### 🔍 **Output Example**

For Query 3:

| CustomerName | OrderID | ProductName | Quantity |
| ------------ | ------- | ----------- | -------- |
| Alice Smith  | 1       | Laptop      | 1        |
| Bob Johnson  | NULL    | NULL        | NULL     |

---

Once you’ve practiced these tasks, let me know, and we’ll move on to **Module 108: Combining Multiple LEFT JOINs**! 😊
