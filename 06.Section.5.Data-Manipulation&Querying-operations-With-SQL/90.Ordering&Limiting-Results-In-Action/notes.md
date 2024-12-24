# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 90: Ordering & Limiting Results In Action** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28701340#overview)

---

### 🚀 **Goal of This Module**

In this module, you'll practice sorting and limiting query results using the `ORDER BY` and `LIMIT` clauses. You’ll work through a series of examples to solidify your understanding and learn how to apply these techniques to real-world scenarios.

---

### 🗃️ **Recap: The Sales Table**

We'll use the following `sales` table for our practice exercises:

```sql
CREATE TABLE IF NOT EXISTS sales (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    volume INTEGER NOT NULL,
    date_created DATE NOT NULL,
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
);
```

**Sample Data**:

| **id** | **customer_name** | **product_name** | **volume** | **date_created** | **is_recurring** | **is_disputed** |
| ------ | ----------------- | ---------------- | ---------- | ---------------- | ---------------- | --------------- |
| 1      | Alice Johnson     | Laptop           | 1500       | 2024-06-01       | TRUE             | FALSE           |
| 2      | Bob Smith         | Wireless Mouse   | 200        | 2024-06-03       | FALSE            | FALSE           |
| 3      | Jane Doe          | Monitor          | 3000       | 2024-06-05       | TRUE             | TRUE            |
| 4      | Emma Wilson       | Printer          | 750        | 2024-06-07       | FALSE            | FALSE           |
| 5      | David Brown       | Headphones       | 2500       | 2024-06-10       | TRUE             | FALSE           |
| 6      | Grace Lee         | Keyboard         | 100        | 2024-06-11       | FALSE            | FALSE           |
| 7      | Frank Harris      | Desk Chair       | 1200       | 2024-06-12       | TRUE             | FALSE           |
| 8      | Hannah Clark      | External SSD     | 850        | 2024-06-13       | FALSE            | FALSE           |
| 9      | Isaac Lewis       | Webcam           | 500        | 2024-06-15       | FALSE            | FALSE           |
| 10     | Jack White        | Graphics Card    | 5000       | 2024-06-17       | FALSE            | TRUE            |

---

### 🛠️ **Practice Examples**

#### 1. **Get the Top 5 Sales by Volume**

Retrieve the top 5 sales with the highest `volume`, sorted in descending order.

```sql
SELECT * FROM sales
ORDER BY volume DESC
LIMIT 5;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** | **date_created** |
| ------ | ----------------- | ---------------- | ---------- | ---------------- |
| 10     | Jack White        | Graphics Card    | 5000       | 2024-06-17       |
| 3      | Jane Doe          | Monitor          | 3000       | 2024-06-05       |
| 5      | David Brown       | Headphones       | 2500       | 2024-06-10       |
| 1      | Alice Johnson     | Laptop           | 1500       | 2024-06-01       |
| 7      | Frank Harris      | Desk Chair       | 1200       | 2024-06-12       |

---

#### 2. **Get the 3 Most Recent Sales**

Retrieve the 3 most recent sales based on `date_created`.

```sql
SELECT * FROM sales
ORDER BY date_created DESC
LIMIT 3;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** | **date_created** |
| ------ | ----------------- | ---------------- | ---------- | ---------------- |
| 10     | Jack White        | Graphics Card    | 5000       | 2024-06-17       |
| 9      | Isaac Lewis       | Webcam           | 500        | 2024-06-15       |
| 8      | Hannah Clark      | External SSD     | 850        | 2024-06-13       |

---

#### 3. **Get the Top 3 Smallest Sales by Volume**

Retrieve the 3 smallest sales based on `volume`, sorted in ascending order.

```sql
SELECT * FROM sales
ORDER BY volume ASC
LIMIT 3;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** | **date_created** |
| ------ | ----------------- | ---------------- | ---------- | ---------------- |
| 6      | Grace Lee         | Keyboard         | 100        | 2024-06-11       |
| 2      | Bob Smith         | Wireless Mouse   | 200        | 2024-06-03       |
| 9      | Isaac Lewis       | Webcam           | 500        | 2024-06-15       |

---

#### 4. **Get Sales Sorted by Customer Name (Alphabetically) and Limit to 4**

Retrieve sales sorted by `customer_name` alphabetically and limit the results to 4 rows.

```sql
SELECT * FROM sales
ORDER BY customer_name ASC
LIMIT 4;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** | **date_created** |
| ------ | ----------------- | ---------------- | ---------- | ---------------- |
| 1      | Alice Johnson     | Laptop           | 1500       | 2024-06-01       |
| 2      | Bob Smith         | Wireless Mouse   | 200        | 2024-06-03       |
| 5      | David Brown       | Headphones       | 2500       | 2024-06-10       |
| 7      | Frank Harris      | Desk Chair       | 1200       | 2024-06-12       |

---

### 🔄 **Combining `ORDER BY` with Multiple Columns**

You can sort by multiple columns by listing them in the `ORDER BY` clause.

#### 5. **Sort by `is_disputed` (TRUE First), Then by `volume` (Descending)**

```sql
SELECT * FROM sales
ORDER BY is_disputed DESC, volume DESC;
```

✅ **Result**:

| **id** | **customer_name** | **product_name** | **volume** | **is_disputed** |
| ------ | ----------------- | ---------------- | ---------- | --------------- |
| 10     | Jack White        | Graphics Card    | 5000       | TRUE            |
| 3      | Jane Doe          | Monitor          | 3000       | TRUE            |
| 2      | Bob Smith         | Wireless Mouse   | 200        | FALSE           |
| 4      | Emma Wilson       | Printer          | 750        | FALSE           |

---

### 📝 **Practice Tasks**

1. **Top 3 High-Volume Sales**:  
   Retrieve the top 3 sales with the highest `volume`.

2. **Most Recent 5 Sales**:  
   Retrieve the 5 most recent sales based on `date_created`.

3. **Smallest 4 Sales by Volume**:  
   Retrieve the 4 smallest sales sorted by `volume` in ascending order.

4. **Sales Sorted by Product Name (Descending)**:  
   Retrieve all sales sorted by `product_name` in descending order and limit the results to 5 rows.

5. **Sales Sorted by Date and Volume**:  
   Retrieve all sales sorted by `date_created` (ascending) and `volume` (descending).

---

### 🌟 **Summary**

- **`ORDER BY`** sorts results by one or more columns in ascending (`ASC`) or descending (`DESC`) order.
- **`LIMIT`** restricts the number of rows returned by a query.
- Combine `ORDER BY` and `LIMIT` for more specific results, like top-performing entries or recent records.
- Use multiple columns in `ORDER BY` to achieve advanced sorting.

Now it's your turn to practice sorting and limiting query results! 🚀😊
