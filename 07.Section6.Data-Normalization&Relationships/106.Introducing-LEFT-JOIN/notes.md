# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## **106. Introducing LEFT JOIN**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877134#overview)
- [Udemy - schema](img/Capture%20d'écran%202024-12-26%20123429.png)

---

### **Objective**:

Understand how **LEFT JOIN** works and how to use it to retrieve all rows from one table, even if there are no matches in the joined table.

---

### **Key Concept: LEFT JOIN**

1. **Definition**:

   - A `LEFT JOIN` returns all rows from the left table and the matching rows from the right table.
   - If there is no match, NULL values are returned for columns from the right table.

2. **Why Use LEFT JOIN?**
   - To retrieve data that may not have related records in another table.
   - For example, find all customers, even those who haven’t placed an order.

---

### **Example Scenario**

We’ll use these tables:

1. **Customers**:
   - Columns: `CustomerID`, `CustomerName`
2. **Orders**:
   - Columns: `OrderID`, `CustomerID`, `OrderDate`

---

### **Basic Syntax**

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

### 🛠️ **Practice Tasks**

#### **Task 1: List All Customers**

- Retrieve all customers, even those who haven’t placed any orders.
- Include:
  - Customer name.
  - Order ID.
  - Order date (if available).

---

#### **Task 2: Filter Data**

- Modify the query to show only customers who have **not placed any orders**.

```sql
SELECT
    c.CustomerName,
    o.OrderID,
    o.OrderDate
FROM
    Customers c
LEFT JOIN
    Orders o ON c.CustomerID = o.CustomerID
WHERE
    o.OrderID IS NULL;
```

---

#### **Task 3: Combine Data with LEFT JOIN**

- Extend the query to include:
  - Product names.
  - Quantities (if orders exist).
- Show NULL for customers with no orders.

---

### 🔍 **Output Example**

For Task 1:

| CustomerName  | OrderID | OrderDate  |
| ------------- | ------- | ---------- |
| Alice Smith   | 1       | 2024-12-20 |
| Bob Johnson   | 2       | 2024-12-21 |
| Charlie Brown | NULL    | NULL       |

---

Once you’ve practiced these queries, let me know, and we’ll move on to **Module 107: Using LEFT JOIN**! 😊
