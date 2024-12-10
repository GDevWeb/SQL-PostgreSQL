# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **45. Adding Boolean Value Types in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614034#overview)

---

### **Overview**

In PostgreSQL, the **Boolean data type** is used to store logical values: **`TRUE`**, **`FALSE`**, and **`NULL`** (unknown). Booleans are useful for representing binary states such as "active/inactive," "yes/no," or "completed/pending."

---

### **Boolean Data Type in PostgreSQL**

- The **Boolean data type** in PostgreSQL is defined as **`BOOLEAN`**.
- Valid values for Boolean columns are:
  - **`TRUE`** or **`t`** (case-insensitive)
  - **`FALSE`** or **`f`** (case-insensitive)
  - **`NULL`** (for unknown or missing values)

---

### **Creating a Table with a Boolean Column**

Let's create a table that uses a Boolean column to track the active status of users.

#### **Example: `users` Table**

```sql
CREATE TABLE users (
    UserID SERIAL PRIMARY KEY,
    Username VARCHAR(100) NOT NULL,
    IsActive BOOLEAN DEFAULT TRUE
);
```

- **`UserID SERIAL PRIMARY KEY`**: Auto-incrementing primary key.
- **`Username VARCHAR(100) NOT NULL`**: User's name, required.
- **`IsActive BOOLEAN DEFAULT TRUE`**: Boolean column with a default value of `TRUE`.

---

### **Inserting Data into Boolean Columns**

You can insert `TRUE`, `FALSE`, or `NULL` into Boolean columns.

#### **Example Insertion**

```sql
INSERT INTO users (Username, IsActive)
VALUES
    ('Alice Johnson', TRUE),
    ('Bob Smith', FALSE),
    ('Catherine Lee', NULL);  -- Unknown status
```

---

### **Querying Boolean Values**

You can query Boolean columns using `TRUE`, `FALSE`, or `IS NULL`.

#### **1. Retrieve All Users**

```sql
SELECT * FROM users;
```

**Output:**

| UserID | Username      | IsActive |
| ------ | ------------- | -------- |
| 1      | Alice Johnson | t        |
| 2      | Bob Smith     | f        |
| 3      | Catherine Lee | NULL     |

#### **2. Filter Active Users**

```sql
SELECT * FROM users WHERE IsActive = TRUE;
```

**Output:**

| UserID | Username      | IsActive |
| ------ | ------------- | -------- |
| 1      | Alice Johnson | t        |

#### **3. Filter Inactive Users**

```sql
SELECT * FROM users WHERE IsActive = FALSE;
```

**Output:**

| UserID | Username  | IsActive |
| ------ | --------- | -------- |
| 2      | Bob Smith | f        |

#### **4. Filter Users with Unknown Status**

```sql
SELECT * FROM users WHERE IsActive IS NULL;
```

**Output:**

| UserID | Username      | IsActive |
| ------ | ------------- | -------- |
| 3      | Catherine Lee | NULL     |

---

### **Updating Boolean Values**

You can update Boolean values using `TRUE`, `FALSE`, or `NULL`.

#### **Example Update**

```sql
UPDATE users
SET IsActive = FALSE
WHERE Username = 'Alice Johnson';
```

#### **Check the Updated Data**

```sql
SELECT * FROM users;
```

**Output:**

| UserID | Username      | IsActive |
| ------ | ------------- | -------- |
| 1      | Alice Johnson | f        |
| 2      | Bob Smith     | f        |
| 3      | Catherine Lee | NULL     |

---

### **Adding a Boolean Column to an Existing Table**

You can use the `ALTER TABLE` statement to add a Boolean column to an existing table.

#### **Example**

```sql
ALTER TABLE users
ADD COLUMN EmailVerified BOOLEAN DEFAULT FALSE;
```

#### **Check the Updated Table Schema**

```sql
\d users
```

---

### **Best Practices for Boolean Columns**

1. **Use Default Values**:

   - Set default values like `TRUE` or `FALSE` for convenience.

   ```sql
   IsActive BOOLEAN DEFAULT TRUE
   ```

2. **Avoid Using `NULL` for Boolean Logic**:

   - If possible, avoid `NULL` for Boolean columns to simplify queries and logic. Instead, provide a default value.

3. **Consistent Naming**:
   - Use clear, descriptive names like `IsActive`, `IsCompleted`, or `HasAccess` for Boolean columns.

---

### **Exercises**

#### **Exercise 1: Create a `products` Table**

Create a `products` table with the following columns:

- `ProductID` (Auto-increment primary key)
- `ProductName` (`VARCHAR(100)`, not null)
- `InStock` (`BOOLEAN`, default `TRUE`)

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    InStock BOOLEAN DEFAULT TRUE
);
```

#### **Exercise 2: Insert Sample Data**

Insert the following products:

1. **ProductName**: "Laptop", **InStock**: `TRUE`
2. **ProductName**: "Smartphone", **InStock**: `FALSE`
3. **ProductName**: "Tablet" (use the default value for `InStock`)

```sql
INSERT INTO products (ProductName, InStock)
VALUES
    ('Laptop', TRUE),
    ('Smartphone', FALSE),
    ('Tablet', DEFAULT);
```

#### **Exercise 3: Query the `products` Table**

1. Retrieve all products that are **in stock**.

   ```sql
   SELECT * FROM products WHERE InStock = TRUE;
   ```

2. Retrieve all products that are **out of stock**.

   ```sql
   SELECT * FROM products WHERE InStock = FALSE;
   ```

---

### **Summary**

- The **Boolean data type** (`BOOLEAN`) stores `TRUE`, `FALSE`, or `NULL`.
- Use `TRUE` and `FALSE` to represent binary states.
- Default values simplify data insertion and logic.
- Queries can filter Boolean columns with `TRUE`, `FALSE`, or `IS NULL`.

Let me know if you need further explanation or more examples! 😊
