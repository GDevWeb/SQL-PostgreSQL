# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 76: Example — Inserting Data** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763108#overview)

---

### 🚀 **Goal of This Module**

In this module, we'll insert sample data into the **Sales Table** of the **Sales Database** that we set up previously. Adding data will allow us to practice querying and data manipulation in upcoming exercises.

---

### 📝 **Recap of the Sales Table Structure**

Before inserting data, here's a reminder of the table we created:

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

---

### 🛠️ **Inserting Sample Data**

Let's insert some example records into the `sales` table. These entries will cover different scenarios, including large volumes, recurring sales, and disputed sales.

```sql
INSERT INTO sales (date_created, date_fulfilled, customer_name, product_name, volume, is_recurring, is_disputed)
VALUES
    ('2024-06-01', '2024-06-05', 'Alice Johnson', 'Laptop', 1500, TRUE, FALSE),
    ('2024-06-03', '2024-06-06', 'Bob Smith', 'Wireless Mouse', 200, FALSE, FALSE),
    ('2024-06-05', '2024-06-07', 'Catherine Lee', 'Keyboard', 50, FALSE, TRUE),
    ('2024-06-07', '2024-06-10', 'David Brown', 'Monitor', 3000, TRUE, TRUE),
    ('2024-06-08', '2024-06-09', 'Emma Wilson', 'Printer', 750, FALSE, FALSE),
    ('2024-06-09', NULL, 'Frank Harris', 'Desk Chair', 1200, TRUE, FALSE),
    ('2024-06-10', '2024-06-14', 'Grace Patel', 'Graphics Card', 5000, FALSE, TRUE),
    ('2024-06-12', '2024-06-15', 'Hannah Clarke', 'External SSD', 850, FALSE, FALSE),
    ('2024-06-15', '2024-06-18', 'Isaac Lewis', 'Webcam', 100, FALSE, FALSE),
    ('2024-06-17', '2024-06-19', 'Jane Doe', 'Headphones', 2500, TRUE, FALSE);
```

---

### ✅ **Explanation of the Data**

| **date_created** | **date_fulfilled** | **customer_name** | **product_name** | **volume** | **is_recurring** | **is_disputed** |
| ---------------- | ------------------ | ----------------- | ---------------- | ---------- | ---------------- | --------------- |
| 2024-06-01       | 2024-06-05         | Alice Johnson     | Laptop           | 1500       | TRUE             | FALSE           |
| 2024-06-03       | 2024-06-06         | Bob Smith         | Wireless Mouse   | 200        | FALSE            | FALSE           |
| 2024-06-05       | 2024-06-07         | Catherine Lee     | Keyboard         | 50         | FALSE            | TRUE            |
| 2024-06-07       | 2024-06-10         | David Brown       | Monitor          | 3000       | TRUE             | TRUE            |
| 2024-06-08       | 2024-06-09         | Emma Wilson       | Printer          | 750        | FALSE            | FALSE           |
| 2024-06-09       | NULL               | Frank Harris      | Desk Chair       | 1200       | TRUE             | FALSE           |
| 2024-06-10       | 2024-06-14         | Grace Patel       | Graphics Card    | 5000       | FALSE            | TRUE            |
| 2024-06-12       | 2024-06-15         | Hannah Clarke     | External SSD     | 850        | FALSE            | FALSE           |
| 2024-06-15       | 2024-06-18         | Isaac Lewis       | Webcam           | 100        | FALSE            | FALSE           |
| 2024-06-17       | 2024-06-19         | Jane Doe          | Headphones       | 2500       | TRUE             | FALSE           |

---

### 🔍 **Verify the Data**

After inserting the data, you can check the contents of the `sales` table with the following query:

```sql
SELECT * FROM sales;
```

---

### 📝 **Key Points to Remember**

1. **Data Variety**:

   - The sample data includes different **volumes**, **recurring sales**, and **disputed sales** to support a variety of queries.

2. **Null Values**:

   - One record (`Frank Harris`) has a `NULL` value for `date_fulfilled` to simulate an unfulfilled sale.

3. **Consistency**:
   - The data types and constraints defined for the table (e.g., `volume >= 0`) ensure data integrity.

---

### 🌟 **Next Steps**

Now that the `sales` table is populated with data, you're ready to:

1. **Practice Queries**: Start querying the data to achieve the goals outlined in the section.
2. **Filter and Analyze**: Write queries to find high-volume sales, recurring sales, disputed sales, and more.

You're off to a great start — let's dive into querying! 🚀😊
