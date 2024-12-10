# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **39. Creating a First Text Column in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614020#overview)

---

### **Overview**

In this lesson, you'll learn how to create a **text column** using the `CREATE TABLE` statement in PostgreSQL. Text columns are used to store string data like names, emails, addresses, and descriptions.

PostgreSQL offers several text-related data types, and we'll explore how to create a table with a basic text column.

---

### **Step-by-Step: Creating a Table with a Text Column**

#### **1. Choose the Appropriate Text Data Type**

The three main text data types in PostgreSQL are:

1. **`VARCHAR(n)`**: Variable-length string with a maximum length of `n` characters.
2. **`CHAR(n)`**: Fixed-length string of exactly `n` characters (right-padded with spaces if shorter).
3. **`TEXT`**: Variable-length string with no length limit.

#### **2. Create a Table with a Text Column**

Here's an example of a table called `employees` with a text column for storing employee names.

```sql
CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);
```

#### **Explanation**:

- **`EmployeeID SERIAL PRIMARY KEY`**: Auto-incrementing unique identifier.
- **`Name VARCHAR(100) NOT NULL`**: The `Name` column can store up to 100 characters and **cannot be `NULL`**.

---

### **Examples of Different Text Columns**

#### **1. Using `VARCHAR`**

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(200) NOT NULL
);
```

- Stores product names up to **200 characters**.

#### **2. Using `CHAR`**

```sql
CREATE TABLE countries (
    CountryCode CHAR(2) PRIMARY KEY,
    CountryName VARCHAR(100)
);
```

- **`CHAR(2)`** is ideal for storing fixed-length data like country codes (e.g., `US`, `FR`).

#### **3. Using `TEXT`**

```sql
CREATE TABLE articles (
    ArticleID SERIAL PRIMARY KEY,
    Title VARCHAR(255),
    Content TEXT
);
```

- **`TEXT`** is suitable for storing **large or unpredictable** amounts of text.

---

### **Inserting Data into a Text Column**

Once your table is created, you can insert data into it.

#### **Example**:

```sql
INSERT INTO employees (Name)
VALUES ('Alice Johnson');
```

#### **Multiple Rows**:

```sql
INSERT INTO employees (Name)
VALUES
    ('Bob Smith'),
    ('Catherine Lee'),
    ('David Brown');
```

---

### **Querying Data from a Text Column**

Retrieve all employees from the `employees` table:

```sql
SELECT * FROM employees;
```

---

### **Best Practices for Text Columns**

1. **Use `VARCHAR(n)`** for fields with predictable maximum lengths (e.g., names, emails).
2. **Use `TEXT`** for fields where the length is unpredictable (e.g., descriptions, comments).
3. **Avoid `CHAR(n)`** unless you have fixed-length data, as it pads shorter strings with spaces.
4. **Add Constraints** like `NOT NULL` or `UNIQUE` when necessary to ensure data integrity.

---

### **Exercises**

#### **Exercise 1: Create a `customers` Table**

Create a `customers` table with:

- `CustomerID` (Auto-increment primary key)
- `FirstName` (`VARCHAR(50)`, not null)
- `LastName` (`VARCHAR(50)`, not null)
- `Email` (`VARCHAR(100)`, unique)

```sql
CREATE TABLE customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE
);
```

#### **Exercise 2: Insert Data into the `customers` Table**

Insert the following customers:

1. `John`, `Doe`, `john.doe@example.com`
2. `Jane`, `Smith`, `jane.smith@example.com`

```sql
INSERT INTO customers (FirstName, LastName, Email)
VALUES
    ('John', 'Doe', 'john.doe@example.com'),
    ('Jane', 'Smith', 'jane.smith@example.com');
```

#### **Exercise 3: Query the `customers` Table**

Retrieve all customers:

```sql
SELECT * FROM customers;
```

---

### **Summary**

- **Text columns** are created using data types like `VARCHAR(n)`, `CHAR(n)`, and `TEXT`.
- The `CREATE TABLE` statement allows you to define text columns with constraints.
- Use **appropriate text types** and **constraints** to ensure data integrity and optimize storage.

Let me know if you need further clarification or additional examples! 😊
