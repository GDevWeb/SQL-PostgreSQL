# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

### 📚 **Module 85: Greater, Smaller & Ranges** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763140#overview)

---

### 🚀 **Goal of This Module**

In this module, you’ll learn how to use SQL operators to compare values and work with ranges. We’ll explore how to filter data using greater than, smaller than, and range-based conditions to create precise queries.

---

### 🛠️ **Comparison Operators Recap**

SQL provides several operators for comparing values in the `WHERE` clause:

| **Operator** | **Description**            | **Example**                   |
| ------------ | -------------------------- | ----------------------------- |
| `>`          | Greater than               | `volume > 1000`               |
| `<`          | Less than                  | `volume < 500`                |
| `>=`         | Greater than or equal to   | `volume >= 1000`              |
| `<=`         | Less than or equal to      | `volume <= 500`               |
| `BETWEEN`    | Within a range (inclusive) | `volume BETWEEN 500 AND 2000` |

---

### 🔍 **Examples of Using Greater and Smaller Operators**

Let’s use the `sales` table for the following examples:

```sql
CREATE TABLE IF NOT EXISTS sales (
    id SERIAL PRIMARY KEY,
    date_created DATE NOT NULL,
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

### ✅ **Using Greater Than (`>`)**

Retrieve sales where the `volume` is greater than **1000**.

```sql
SELECT * FROM sales
WHERE volume > 1000;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** |
| ------ | ----------------- | ---------------- | ---------- |
| 1      | Alice Johnson     | Laptop           | 1500       |
| 3      | David Brown       | Monitor          | 3000       |
| 5      | Jane Doe          | Headphones       | 2500       |

---

### ✅ **Using Less Than (`<`)**

Retrieve sales where the `volume` is less than **1000**.

```sql
SELECT * FROM sales
WHERE volume < 1000;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** |
| ------ | ----------------- | ---------------- | ---------- |
| 2      | Bob Smith         | Wireless Mouse   | 200        |
| 4      | Emma Wilson       | Printer          | 750        |

---

### ✅ **Using Greater Than or Equal To (`>=`)**

Retrieve sales where the `volume` is **1000 or more**.

```sql
SELECT * FROM sales
WHERE volume >= 1000;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** |
| ------ | ----------------- | ---------------- | ---------- |
| 1      | Alice Johnson     | Laptop           | 1500       |
| 3      | David Brown       | Monitor          | 3000       |
| 5      | Jane Doe          | Headphones       | 2500       |

---

### ✅ **Using Less Than or Equal To (`<=`)**

Retrieve sales where the `volume` is **500 or less**.

```sql
SELECT * FROM sales
WHERE volume <= 500;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** |
| ------ | ----------------- | ---------------- | ---------- |
| 2      | Bob Smith         | Wireless Mouse   | 200        |

---

### 📊 **Using Ranges with `BETWEEN`**

The `BETWEEN` operator filters values within a specified range (inclusive of the boundaries).

#### **Syntax**:

```sql
SELECT * FROM table_name
WHERE column_name BETWEEN lower_value AND upper_value;
```

#### **Example: Sales with Volume Between 500 and 2000**

```sql
SELECT * FROM sales
WHERE volume BETWEEN 500 AND 2000;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** |
| ------ | ----------------- | ---------------- | ---------- |
| 1      | Alice Johnson     | Laptop           | 1500       |
| 4      | Emma Wilson       | Printer          | 750        |

---

### 🔄 **Combining Comparisons**

You can combine `BETWEEN` with other operators using `AND` and `OR`.

#### **Example: Find Recurring Sales with Volume Between 1000 and 3000**

```sql
SELECT * FROM sales
WHERE volume BETWEEN 1000 AND 3000 AND is_recurring = TRUE;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** |
| ------ | ----------------- | ---------------- | ---------- |
| 1      | Alice Johnson     | Laptop           | 1500       |
| 5      | Jane Doe          | Headphones       | 2500       |

---

### ❗ **Important Considerations**

1. **Inclusive Ranges**:

   - The `BETWEEN` operator is **inclusive** of both the lower and upper boundaries.

2. **Use Parentheses**:

   - When combining conditions, use parentheses to make the logic clear.

3. **Order of Precedence**:
   - `AND` has higher precedence than `OR`. Use parentheses to control the order.

---

### 📝 **Practice Tasks**

1. **Find Small-Volume Sales**:  
   Retrieve sales where the `volume` is less than **500**.

2. **Find Mid-Range Sales**:  
   Retrieve sales where the `volume` is between **500** and **2000**.

3. **Find Large Recurring Sales**:  
   Find recurring sales where the `volume` is greater than **2000**.

4. **Filter by Date and Volume**:  
   Retrieve sales created after **June 5, 2024**, where the `volume` is less than **1000**.

---

### 🌟 **Summary**

- Use **`>`**, **`<`**, **`>=`**, and **`<=`** to filter data based on comparisons.
- Use **`BETWEEN`** for inclusive range-based filtering.
- Combine comparisons with logical operators like `AND` and `OR` for more complex queries.
- Always test your queries to ensure they return the expected results.

Now it’s time to practice filtering data using these comparison operators! 🚀😊
