# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## **102 - Joining Data & Introducing INNER JOIN**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877114#overview)
- [udemy - schema inner join](img/inner-join.png)

---

### **Objective**

This module focuses on **joining tables** to retrieve data across related tables using **INNER JOIN**.

---

### **What You'll Learn**

- The concept of **JOIN** in SQL.
- How to combine rows from two or more tables.
- Use **INNER JOIN** to match records in related tables.

---

### 🛠️ **Step 1: Setting the Stage**

We'll work with these tables:

1. **Customers**: Contains customer details.
2. **Products**: Lists available products.
3. **Orders**: Tracks orders made by customers.
4. **OrderDetails**: Tracks which products are in which orders and their quantities.

---

### 🧩 **Practice Tasks**

#### **Task 1: Basic INNER JOIN**

- Write a query to retrieve all orders, including:
  - The customer's name.
  - The order date.

#### **Task 2: Joining Multiple Tables**

- Extend the query to include:
  - The product name.
  - The quantity ordered.
  - The total price (calculated dynamically).

#### **Task 3: Filter Joined Data**

- Add a filter to retrieve only orders placed by a specific customer (e.g., "Alice Smith").

---

### **How to Proceed**

1. Start by writing basic JOIN queries.
2. Incrementally add more complexity to the queries (multiple tables, filters, and calculated fields).

Let me know when you’re ready to begin or if you’d like an example structure to get started! 😊
