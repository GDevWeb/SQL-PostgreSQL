# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **61. Understanding Text Encoding & Collation in PostgreSQL and MySQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614450#overview)

---

### **Overview**

When dealing with text data in SQL databases like PostgreSQL and MySQL, it is crucial to understand:

1. **Text Encoding**: How characters are represented and stored.
2. **Collation**: How text data is sorted and compared.

Proper text encoding and collation settings ensure accurate data storage, retrieval, and comparisons, especially when working with different languages and character sets.

---

### **1. Text Encoding**

**Text encoding** defines how characters are represented as bytes. The most commonly used encodings are:

- **UTF-8**: The most widely used encoding for supporting all Unicode characters.
- **ASCII**: Limited to basic English characters (0-127).
- **LATIN1 (ISO-8859-1)**: Supports Western European languages but not all Unicode characters.

#### **Default Encoding in PostgreSQL**

- PostgreSQL typically uses **UTF-8** by default.
- You can check the encoding of your database:

  ```sql
  SELECT pg_encoding_to_char(encoding) FROM pg_database WHERE datname = current_database();
  ```

#### **Default Encoding in MySQL**

- MySQL typically uses **`utf8mb4`** for full Unicode support.
- To check the default character set and encoding:

  ```sql
  SHOW VARIABLES LIKE 'character_set_database';
  ```

---

### **2. Specifying Encoding During Database Creation**

#### **PostgreSQL Example**

Create a database with **UTF-8** encoding:

```sql
CREATE DATABASE mydb ENCODING 'UTF8';
```

#### **MySQL Example**

Create a database with **`utf8mb4`** encoding:

```sql
CREATE DATABASE mydb CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
```

---

### **3. Collation**

**Collation** defines how text is **sorted** and **compared**. It determines the rules for character ordering, case sensitivity, and language-specific comparisons.

Examples of collation rules:

- **Case Sensitivity**: Whether "A" and "a" are treated as different.
- **Accent Sensitivity**: Whether "é" and "e" are treated as different.
- **Language-Specific Rules**: Sorting rules differ between languages (e.g., German vs. English).

---

### **Common Collations**

| **Collation**            | **Description**                                   |
| ------------------------ | ------------------------------------------------- |
| **`utf8_general_ci`**    | Case-insensitive, accent-insensitive collation    |
| **`utf8_bin`**           | Case-sensitive, accent-sensitive binary collation |
| **`utf8mb4_unicode_ci`** | Case-insensitive collation using Unicode rules    |

- **`ci`** stands for **case-insensitive**.
- **`bin`** means comparisons are done byte-by-byte.

---

### **4. Specifying Collation for a Column**

#### **PostgreSQL Example**

Create a table with a specified collation:

```sql
CREATE TABLE users (
    Username VARCHAR(100) COLLATE "en_US"
);
```

- **`en_US`**: U.S. English collation.

#### **MySQL Example**

Create a table with a specified collation:

```sql
CREATE TABLE users (
    Username VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
);
```

---

### **5. Changing Collation of a Column**

#### **PostgreSQL**

```sql
ALTER TABLE users
ALTER COLUMN Username TYPE VARCHAR(100) COLLATE "en_US";
```

#### **MySQL**

```sql
ALTER TABLE users
MODIFY Username VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

---

### **6. Comparing Strings with Collation**

#### **PostgreSQL Example**

Case-sensitive comparison:

```sql
SELECT * FROM users WHERE Username = 'Alice';
```

Case-insensitive comparison:

```sql
SELECT * FROM users WHERE Username ILIKE 'alice';
```

#### **MySQL Example**

Case-insensitive comparison with collation:

```sql
SELECT * FROM users WHERE Username = 'alice' COLLATE utf8mb4_general_ci;
```

---

### **7. Sorting with Collation**

#### **PostgreSQL Example**

Sort names using a specific collation:

```sql
SELECT * FROM users ORDER BY Username COLLATE "en_US";
```

#### **MySQL Example**

Sort names with collation:

```sql
SELECT * FROM users ORDER BY Username COLLATE utf8mb4_unicode_ci;
```

---

### **8. Default Collation for a Database**

#### **PostgreSQL**

Check the default collation for the current database:

```sql
SELECT datcollate FROM pg_database WHERE datname = current_database();
```

#### **MySQL**

Check the default collation for the database:

```sql
SHOW VARIABLES LIKE 'collation_database';
```

---

### **Best Practices for Text Encoding and Collation**

1. **Use UTF-8 Encoding**:
   - UTF-8 (`utf8mb4` in MySQL) supports all characters and is widely compatible.
2. **Consistent Collation**:

   - Use consistent collation across tables and columns to avoid issues with sorting and comparisons.

3. **Case and Accent Sensitivity**:

   - Choose collations that match your application requirements (e.g., `utf8_general_ci` for case-insensitive, `utf8_bin` for case-sensitive).

4. **Language-Specific Collations**:
   - For applications with internationalization, use language-specific collations (e.g., `en_US`, `fr_FR`).

---

### **Exercises**

#### **Exercise 1: Create a PostgreSQL Table with Collation**

Create a `customers` table with UTF-8 encoding and U.S. English collation for the `Name` column:

```sql
CREATE TABLE customers (
    CustomerID SERIAL PRIMARY KEY,
    Name VARCHAR(100) COLLATE "en_US",
    Email VARCHAR(150) NOT NULL
);
```

#### **Exercise 2: Create a MySQL Table with Collation**

Create a `products` table with `utf8mb4` encoding and `utf8mb4_unicode_ci` collation:

```sql
CREATE TABLE products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    Price DECIMAL(10, 2) NOT NULL
);
```

#### **Exercise 3: Compare Strings**

1. Insert sample data into the `customers` table:

```sql
INSERT INTO customers (Name, Email)
VALUES ('Alice Johnson', 'alice@example.com'), ('alice johnson', 'alice2@example.com');
```

2. Perform a case-insensitive search:

```sql
SELECT * FROM customers WHERE Name ILIKE 'alice johnson';
```

---

### **Summary**

- **Text Encoding** defines how characters are stored (e.g., UTF-8).
- **Collation** determines how text is sorted and compared (e.g., case sensitivity).
- **PostgreSQL** and **MySQL** offer flexible options for specifying encoding and collation at the database, table, and column levels.
- Choose the appropriate encoding and collation based on your application's requirements.

Let me know if you need further clarification or additional examples! 😊
