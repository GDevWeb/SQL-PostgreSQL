# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## **109. What About RIGHT JOIN?**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877150#overview)

---

### **Objective**:

Understand how **RIGHT JOIN** works, its use cases, and how it differs from **LEFT JOIN**.

---

### **Key Concept: RIGHT JOIN**

1. **Definition**:

   - A `RIGHT JOIN` returns all rows from the right table and the matching rows from the left table.
   - If there is no match, `NULL` values are returned for columns from the left table.

2. **Comparison with LEFT JOIN**:

   - A `RIGHT JOIN` is essentially a reversed `LEFT JOIN`.  
     Example:
     ```sql
     SELECT *
     FROM A
     RIGHT JOIN B ON A.id = B.id;
     ```
     is equivalent to:
     ```sql
     SELECT *
     FROM B
     LEFT JOIN A ON A.id = B.id;
     ```

3. **Common Use Cases**:
   - Less commonly used because most scenarios can be solved with `LEFT JOIN` by switching table positions.

---

### **Example Scenario**

We’ll use these tables:

1. **Products**:
   - Columns: `ProductID`, `ProductName`
2. **OrderDetails**:
   - Columns: `OrderDetailID`, `ProductID`, `Quantity`

---

### 🛠️ **Practice Queries**

#### **Query 1: Products and Order Details**

- Retrieve all products, including products that haven’t been ordered.

```sql
SELECT
    p.ProductName,
    od.Quantity
FROM
    OrderDetails od
RIGHT JOIN
    Products p ON od.ProductID = p.ProductID;
```

---

#### **Query 2: Orders Without Products**

- Identify orders that have no associated products.

```sql
SELECT
    o.OrderID,
    p.ProductName
FROM
    OrderDetails od
RIGHT JOIN
    Products p ON od.ProductID = p.ProductID
WHERE
    od.OrderID IS NULL;
```

---

#### **Query 3: Reverse the Direction**

- Compare the result of a `RIGHT JOIN` with its equivalent `LEFT JOIN`.

```sql
-- Using RIGHT JOIN
SELECT
    p.ProductName,
    od.Quantity
FROM
    OrderDetails od
RIGHT JOIN
    Products p ON od.ProductID = p.ProductID;

-- Equivalent LEFT JOIN
SELECT
    p.ProductName,
    od.Quantity
FROM
    Products p
LEFT JOIN
    OrderDetails od ON od.ProductID = p.ProductID;
```

---

### 🧩 **Practice Tasks**

1. **List All Orders**:

   - Retrieve all orders, even those without associated products, using a `RIGHT JOIN`.

2. **Identify Unordered Products**:

   - Use `RIGHT JOIN` to list products that haven’t been ordered.

3. **Switch and Compare**:
   - Practice writing equivalent queries using `LEFT JOIN` and `RIGHT JOIN` to understand their relationship.

---

### 🔍 **Output Example**

For Query 1:

| ProductName | Quantity |
| ----------- | -------- |
| Laptop      | 1        |
| Smartphone  | 2        |
| Keyboard    | NULL     |

---

Once you’ve practiced these tasks, let me know, and we’ll move on to the next module! 😊
