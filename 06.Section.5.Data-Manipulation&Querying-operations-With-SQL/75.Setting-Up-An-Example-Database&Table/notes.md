# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 75: Setting Up an Example Database & Table** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763102#overview)

---

### 🚀 **Goal of This Module**

In this module, we'll set up the **Sales Database** and the **Sales Table** that we'll use throughout the section. We'll create the database, define the table structure, and ensure that appropriate data types are used for each column.

---

### 🛠️ **Step 1: Create the Database**

Let's start by creating the **Sales Database** where our table will reside.

```sql
CREATE DATABASE sales_db;
```

If you're using a tool like **PostgreSQL**, make sure to connect to the new database before proceeding:

```sql
\c sales_db;
```

---

### 🗃️ **Step 2: Create the Sales Table**

Now, let's create the `sales` table with the appropriate columns and data types.

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

### 📝 **Explanation of Each Column**

| **Column**       | **Data Type**  | **Description**                                      |
| ---------------- | -------------- | ---------------------------------------------------- |
| `id`             | `SERIAL`       | Auto-incremented unique identifier for each sale     |
| `date_created`   | `DATE`         | Date when the sale was created (cannot be null)      |
| `date_fulfilled` | `DATE`         | Date when the sale was fulfilled                     |
| `customer_name`  | `VARCHAR(100)` | Name of the customer                                 |
| `product_name`   | `VARCHAR(100)` | Name of the product sold                             |
| `volume`         | `INTEGER`      | Quantity/volume of the sale; must be >= 0            |
| `is_recurring`   | `BOOLEAN`      | Indicates if the sale is recurring (default `FALSE`) |
| `is_disputed`    | `BOOLEAN`      | Indicates if the sale is disputed (default `FALSE`)  |

---

### ✅ **Best Practices for Table Creation**

1. **Primary Key**:

   - The `id` column serves as the primary key to uniquely identify each record.

2. **Constraints**:

   - **NOT NULL** constraints ensure that essential columns like `date_created`, `customer_name`, and `product_name` cannot be empty.
   - A **CHECK constraint** ensures the `volume` is always a non-negative number.

3. **Defaults**:
   - `is_recurring` and `is_disputed` default to `FALSE` to provide sensible initial values.

---

### 🔍 **Verify the Table Structure**

After creating the table, you can check its structure using:

```sql
\d sales;
```

This will display the columns, data types, and constraints of the `sales` table.

---

### 🌟 **Next Steps**

With the **Sales Database** and **Sales Table** set up, you're ready to:

1. **Insert Sample Data**: Populate the table with example sales records.
2. **Write Queries**: Practice retrieving and analyzing data using SQL queries.

You’ve successfully laid the foundation — great job! 🚀😊
