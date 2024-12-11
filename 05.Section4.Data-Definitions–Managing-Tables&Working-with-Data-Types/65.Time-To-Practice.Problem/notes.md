# Title

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28653364#overview)
- [orders](img/)

### **65. Exercise: Creating a Database for an Online Shop**

Let's solve the exercise step by step based on the instructions and the provided diagram.

---

### **Step 1: Create a New Database**

Create a new database for the online shop.

#### **PostgreSQL**

```sql
CREATE DATABASE online_shop;
```

#### **MySQL**

```sql
CREATE DATABASE online_shop CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

---

### **Step 2: Add a Table for Products**

Switch to the `online_shop` database and create a `products` table.

#### **PostgreSQL**

```sql
\c online_shop;

CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Description TEXT,
    AmountInStock INT DEFAULT 0,
    Image VARCHAR(255)
);
```

#### **MySQL**

```sql
USE online_shop;

CREATE TABLE products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Description TEXT,
    AmountInStock INT DEFAULT 0,
    Image VARCHAR(255)
);
```

---

### **Step 3: Insert Dummy Data**

Insert some sample data into the `products` table.

```sql
INSERT INTO products (ProductName, Price, Description, AmountInStock, Image)
VALUES
    ('Laptop', 999.99, 'A high-performance laptop.', 10, 'laptop.png'),
    ('Wireless Mouse', 25.99, 'A sleek wireless mouse.', 50, 'mouse.png'),
    ('Headphones', 49.99, 'Noise-cancelling headphones.', 30, 'headphones.png'),
    ('Smartphone', 699.99, 'Latest model smartphone.', 15, 'smartphone.png'),
    ('Keyboard', 39.99, 'Mechanical keyboard.', 20, 'keyboard.png');
```

---

### **Step 4: View the Inserted Data**

Query the table to verify the data.

```sql
SELECT * FROM products;
```

**Sample Output:**

| ProductID | ProductName    | Price  | Description                  | AmountInStock | Image          |
| --------- | -------------- | ------ | ---------------------------- | ------------- | -------------- |
| 1         | Laptop         | 999.99 | A high-performance laptop.   | 10            | laptop.png     |
| 2         | Wireless Mouse | 25.99  | A sleek wireless mouse.      | 50            | mouse.png      |
| 3         | Headphones     | 49.99  | Noise-cancelling headphones. | 30            | headphones.png |
| 4         | Smartphone     | 699.99 | Latest model smartphone.     | 15            | smartphone.png |
| 5         | Keyboard       | 39.99  | Mechanical keyboard.         | 20            | keyboard.png   |

---

### **Step 5: Add Sensible Constraints**

Add constraints to ensure data integrity.

#### **PostgreSQL & MySQL**

```sql
ALTER TABLE products
MODIFY ProductName VARCHAR(100) NOT NULL UNIQUE;

ALTER TABLE products
ADD CONSTRAINT price_positive CHECK (Price > 0);

ALTER TABLE products
ADD CONSTRAINT stock_non_negative CHECK (AmountInStock >= 0);
```

---

### **Step 6: Verify Constraints**

Try inserting invalid data to see if constraints work.

#### **Example of Invalid Data**

```sql
INSERT INTO products (ProductName, Price, AmountInStock)
VALUES ('Invalid Product', -10, -5);
```

**Expected Error**:

```
ERROR:  new row for relation "products" violates check constraint "price_positive"
```

---

### **Summary of Tasks**

1. **Created a database** for the online shop.
2. **Added a `products` table** with appropriate columns and data types.
3. **Inserted dummy data** into the `products` table.
4. **Added constraints** for primary key, uniqueness, and logical checks.

This exercise helps reinforce key concepts of **table creation**, **data insertion**, and **constraints**.

Let me know if you need further assistance or additional exercises! 😊
