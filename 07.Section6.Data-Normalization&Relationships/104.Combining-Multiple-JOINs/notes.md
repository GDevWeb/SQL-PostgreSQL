# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## **104. Combining Multiple JOINs**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877122#overview)

---

### **Objective**:

Learn how to combine multiple **JOINs** in a single query to retrieve data across several related tables.

---

### **Step-by-Step Guide**

#### **Concept Recap**:

1. **Multiple JOINs**:
   - You can join more than two tables in a query by chaining multiple `JOIN` clauses.
   - Each `JOIN` connects two tables at a time.
2. **Importance**:
   - Enables retrieving comprehensive data across multiple relationships.
   - For example, in an e-commerce database:
     - `Customers` → `Orders` → `OrderDetails` → `Products`.

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

#### **SQL Syntax**

```sql
SELECT
    c.CustomerName,
    o.OrderID,
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
    Products p ON od.ProductID = p.ProductID;
```

---

### 🛠️ **Practice Tasks**

#### **Task 1: Combine All Tables**

- Use multiple **INNER JOINs** to retrieve:
  - Customer names.
  - Order dates.
  - Product names.
  - Quantities.
  - Total prices for each order detail.

---

#### **Task 2: Apply Filters**

- Retrieve only orders where the total price exceeds $100.

---

#### **Task 3: Group Data**

- Group the results by customer names and calculate the total amount spent by each customer.

---

### 🔍 **Output Example**

For Task 1, your result should look like:

| CustomerName | OrderID | OrderDate  | ProductName | Quantity | TotalPrice |
| ------------ | ------- | ---------- | ----------- | -------- | ---------- |
| Alice Smith  | 1       | 2024-12-20 | Laptop      | 1        | 1200.00    |
| Alice Smith  | 1       | 2024-12-20 | Keyboard    | 2        | 100.00     |
| Bob Johnson  | 2       | 2024-12-21 | Smartphone  | 1        | 800.00     |

---

Once you’ve completed these tasks, let me know, and we’ll proceed to **Module 105: Data Joining & Filtering**! 😊
