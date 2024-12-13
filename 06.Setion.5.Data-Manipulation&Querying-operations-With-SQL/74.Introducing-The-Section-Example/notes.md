# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 74: Introducing The Section Example** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763092#overview)
- [schema \_ outline of the section](img/outline-of-this-section.png)

---

### 🚀 **Overview of the Example: Sales Database**

In this module, we'll introduce a **Sales Database** example that will serve as the foundation for practicing data manipulation and querying operations in SQL. This example will cover key concepts such as **creating tables**, **inserting data**, and **writing queries** to meet specific business goals.

---

### 🗃️ **The Sales Database Structure**

We'll work with a **Sales Table** that contains the following columns:

| **Column Name**  | **Description**                             |
| ---------------- | ------------------------------------------- |
| `id`             | Unique identifier for each sale             |
| `date_created`   | Date when the sale was created              |
| `date_fulfilled` | Date when the sale was fulfilled            |
| `customer_name`  | Name of the customer who made the purchase  |
| `product_name`   | Name of the product sold                    |
| `volume`         | The volume or quantity of the sale          |
| `is_recurring`   | Boolean indicating if the sale is recurring |
| `is_disputed`    | Boolean indicating if the sale is disputed  |

---

### 🛠️ **Tasks to Complete**

1. **Create the Database and Table**:

   - Define the `sales` table with appropriate columns and data types.

2. **Pick Appropriate Data Types**:

   - For each column, select the most suitable data type to ensure data integrity.

3. **Insert Example Data**:
   - Populate the table with sample data to use in our queries.

---

### 🎯 **Query Goals**

In this section, we'll write SQL queries to achieve the following goals:

1. **Find all sales with volume > 1000**.
2. **Find the top 10 sales** based on volume.
3. **Find the bottom 10 sales** based on volume.
4. **Find all recurring sales** (`is_recurring` = `TRUE`).
5. **Find disputed sales with volume > 5000**.
6. **Find all sales created between two dates**.
7. **Find all sales fulfilled within 5 days of creation**.
8. **Get a list of distinct customers**.
9. **Get a list of distinct products**.

---

### 🧩 **Why This Example Matters**

This Sales Database example helps you:

1. **Practice Real-World Scenarios**:

   - These tasks mirror the kinds of data manipulation you would perform in a business setting.

2. **Master Key SQL Concepts**:

   - You’ll reinforce your knowledge of creating tables, inserting data, and querying data using `SELECT`, `WHERE`, `ORDER BY`, and more.

3. **Build Query Confidence**:
   - By the end of this section, you’ll be comfortable writing queries to retrieve, filter, and analyze data effectively.

---

### 🌟 **Let’s Get Started!**

We’ll begin by:

1. **Creating the Sales Database**.
2. **Defining the Sales Table** with appropriate columns and data types.
3. **Inserting sample data** to use for querying.

This example will guide you step-by-step through practical, hands-on SQL exercises. Get ready to boost your SQL skills! 🚀😊
