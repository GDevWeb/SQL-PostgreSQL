# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## **103. Using INNER JOIN**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877118#overview)

---

### **Objective**

Learn to effectively use **INNER JOIN** to combine rows from two or more tables based on related columns.

---

### **Step-by-Step Guide**

#### **Concept Recap**:

1. **INNER JOIN**:
   - Combines rows from two tables where there is a match in the columns specified in the `ON` clause.
   - If no match is found, the row is excluded from the result.

---

### **Example Scenario**

We’ll use the following tables:

1. **Customers**: Contains customer details.
   - Columns: `CustomerID`, `CustomerName`
2. **Orders**: Tracks orders placed by customers.
   - Columns: `OrderID`, `CustomerID`, `OrderDate`

---

#### **SQL Syntax**

```sql
SELECT
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate
FROM
    Customers
INNER JOIN
    Orders
ON
    Customers.CustomerID = Orders.CustomerID;
```

---

### 🛠️ **Practice Tasks**

#### **Task 1: Retrieve Orders with Customer Names**

- Use an **INNER JOIN** to get:
  - Customer names.
  - Order IDs.
  - Order dates.

---

#### **Task 2: Extend the Query**

- Join a third table, `OrderDetails`, to include:
  - Product names.
  - Quantities ordered.

---

#### **Task 3: Apply Filters**

- Retrieve only orders placed within the last 7 days.

---

### 🔍 **Output Example**

For Task 1, your result should look like:

| CustomerName | OrderID | OrderDate  |
| ------------ | ------- | ---------- |
| Alice Smith  | 1       | 2024-12-20 |
| Bob Johnson  | 2       | 2024-12-21 |

---

Once you’ve completed these tasks, let me know, and we’ll proceed to **Module 104: Combining Multiple JOINs**! 😊
