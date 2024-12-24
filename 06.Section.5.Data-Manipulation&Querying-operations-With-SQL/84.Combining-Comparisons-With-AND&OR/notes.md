# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763136#overview)

### 📚 **Module 84: Combining Comparisons with `AND` & `OR`** 📚

---

### 🚀 **Goal of This Module**

In this module, you’ll learn how to combine multiple conditions using the logical operators **`AND`** and **`OR`** to create more powerful and precise filters in SQL queries.

---

### 📝 **Recap: Logical Operators**

Logical operators are used to combine multiple conditions in the `WHERE` clause:

1. **`AND`**:

   - Returns rows where **all conditions** are true.

2. **`OR`**:

   - Returns rows where **at least one condition** is true.

3. **`NOT`**:
   - Reverses the result of a condition.

---

### 🛠️ **Basic Syntax**

**Combining Conditions with `AND`**:

```sql
SELECT column1, column2
FROM table_name
WHERE condition1 AND condition2;
```

**Combining Conditions with `OR`**:

```sql
SELECT column1, column2
FROM table_name
WHERE condition1 OR condition2;
```

---

### 🔍 **Examples of `AND` & `OR`**

Let's use the `sales` table for the following examples:

```sql
CREATE TABLE IF NOT EXISTS sales (
    id SERIAL PRIMARY KEY,
    date_created DATE NOT NULL,
    date_fulfilled DATE,
    customer_name VARCHAR(100) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    volume INTEGER CHECK (volume >= 0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
);
```

#### Sample Data:

| **id** | **date_created** | **customer_name** | **product_name** | **volume** | **is_recurring** | **is_disputed** |
| ------ | ---------------- | ----------------- | ---------------- | ---------- | ---------------- | --------------- |
| 1      | 2024-06-01       | Alice Johnson     | Laptop           | 1500       | TRUE             | FALSE           |
| 2      | 2024-06-03       | Bob Smith         | Wireless Mouse   | 200        | FALSE            | FALSE           |
| 3      | 2024-06-07       | David Brown       | Monitor          | 3000       | TRUE             | TRUE            |
| 4      | 2024-06-09       | Emma Wilson       | Printer          | 750        | FALSE            | FALSE           |
| 5      | 2024-06-17       | Jane Doe          | Headphones       | 2500       | TRUE             | FALSE           |

---

### ✅ **Using `AND`**

The `AND` operator returns rows where **all conditions are true**.

**Example 1**: Find sales where the `volume` is greater than 1000 **and** the sale is marked as recurring.

```sql
SELECT * FROM sales
WHERE volume > 1000 AND is_recurring = TRUE;
```

✅ **Result**:

| **id** | **date_created** | **customer_name** | **product_name** | **volume** | **is_recurring** | **is_disputed** |
| ------ | ---------------- | ----------------- | ---------------- | ---------- | ---------------- | --------------- |
| 1      | 2024-06-01       | Alice Johnson     | Laptop           | 1500       | TRUE             | FALSE           |
| 3      | 2024-06-07       | David Brown       | Monitor          | 3000       | TRUE             | TRUE            |
| 5      | 2024-06-17       | Jane Doe          | Headphones       | 2500       | TRUE             | FALSE           |

---

### ✅ **Using `OR`**

The `OR` operator returns rows where **at least one condition is true**.

**Example 2**: Find sales where the `volume` is greater than 2000 **or** the sale is disputed.

```sql
SELECT * FROM sales
WHERE volume > 2000 OR is_disputed = TRUE;
```

✅ **Result**:

| **id** | **date_created** | **customer_name** | **product_name** | **volume** | **is_recurring** | **is_disputed** |
| ------ | ---------------- | ----------------- | ---------------- | ---------- | ---------------- | --------------- |
| 3      | 2024-06-07       | David Brown       | Monitor          | 3000       | TRUE             | TRUE            |
| 5      | 2024-06-17       | Jane Doe          | Headphones       | 2500       | TRUE             | FALSE           |

---

### ✅ **Combining `AND` and `OR`**

You can combine `AND` and `OR` in a single query. Use parentheses `()` to group conditions and clarify the logic.

**Example 3**: Find sales where the `volume` is greater than 1000 **and** the sale is either recurring **or** disputed.

```sql
SELECT * FROM sales
WHERE volume > 1000 AND (is_recurring = TRUE OR is_disputed = TRUE);
```

✅ **Result**:

| **id** | **date_created** | **customer_name** | **product_name** | **volume** | **is_recurring** | **is_disputed** |
| ------ | ---------------- | ----------------- | ---------------- | ---------- | ---------------- | --------------- |
| 3      | 2024-06-07       | David Brown       | Monitor          | 3000       | TRUE             | TRUE            |
| 5      | 2024-06-17       | Jane Doe          | Headphones       | 2500       | TRUE             | FALSE           |

---

### ❗ **Order of Precedence**

- **`AND`** has higher precedence than **`OR`**.
- Use **parentheses `()`** to control the order of evaluation.

**Example**:

```sql
SELECT * FROM sales
WHERE is_recurring = TRUE OR is_disputed = TRUE AND volume > 2000;
```

This is evaluated as:

```sql
SELECT * FROM sales
WHERE is_recurring = TRUE OR (is_disputed = TRUE AND volume > 2000);
```

To change the logic, use parentheses:

```sql
SELECT * FROM sales
WHERE (is_recurring = TRUE OR is_disputed = TRUE) AND volume > 2000;
```

---

### 📝 **Practice Tasks**

1. **High-Volume, Non-Disputed Sales**:  
   Find sales where the `volume` is greater than 1500 **and** the sale is **not disputed**.

2. **Recurring or Disputed Sales**:  
   Find sales that are either recurring **or** disputed.

3. **Filter by Multiple Conditions**:  
   Retrieve sales where the `volume` is between 500 and 2000 **and** the product is not recurring.

4. **Complex Condition**:  
   Find sales where the `volume` is greater than 1000 **and** the `customer_name` starts with **“A”** or **“D”**.

---

### 🌟 **Summary**

- **`AND`** requires all conditions to be true.
- **`OR`** requires at least one condition to be true.
- **Parentheses `()`** help clarify the order of evaluation when combining `AND` and `OR`.
- Practice combining conditions to build precise queries.

Now it’s time to practice combining `AND` and `OR` to sharpen your SQL skills! 🚀😊
