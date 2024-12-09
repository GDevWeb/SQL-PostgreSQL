# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **30. Introducing Key Data Definition Clauses**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28613996#overview)
- [schema - database & table hierarchy](pdf/database&table-hierarchy.png)
- [schema - managing database & tables](pdf/managing-database&tables.png)

---

### **Overview**

In PostgreSQL, **Data Definition Language (DDL)** clauses are used to define and manage database objects like tables, columns, constraints, and relationships. Understanding these clauses is essential for creating efficient and well-structured databases.

In this lesson, we’ll cover key DDL clauses with PostgreSQL-specific examples.

---

### **Key Data Definition Clauses**

#### **1. `CREATE TABLE`**

The `CREATE TABLE` clause is used to define a new table with specific columns and constraints.

**Syntax**:

```sql
CREATE TABLE table_name (
    column1 data_type [constraints],
    column2 data_type [constraints],
    ...
);
```

**Example**:

```sql
CREATE TABLE users (
    UserID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE,
    JoinDate DATE DEFAULT CURRENT_DATE
);
```

- **`SERIAL`**: Auto-incrementing integer for the primary key.
- **`NOT NULL`**: Ensures the column cannot be `NULL`.
- **`UNIQUE`**: Ensures unique values in the column.
- **`DEFAULT CURRENT_DATE`**: Sets the current date as the default value.

---

#### **2. `ALTER TABLE`**

The `ALTER TABLE` clause is used to modify an existing table by adding, modifying, or dropping columns or constraints.

**Common Uses**:

1. **Add a Column**:

   ```sql
   ALTER TABLE users
   ADD COLUMN PhoneNumber VARCHAR(15);
   ```

2. **Modify a Column's Data Type**:

   ```sql
   ALTER TABLE users
   ALTER COLUMN PhoneNumber TYPE TEXT;
   ```

3. **Drop a Column**:

   ```sql
   ALTER TABLE users
   DROP COLUMN PhoneNumber;
   ```

---

#### **3. `DROP TABLE`**

The `DROP TABLE` clause deletes a table and all its data.

**Syntax**:

```sql
DROP TABLE table_name;
```

**Example**:

```sql
DROP TABLE users;
```

- **Caution**: This operation is irreversible unless you have a backup.

---

#### **4. `TRUNCATE TABLE`**

The `TRUNCATE TABLE` clause removes all rows from a table but keeps the table structure intact.

**Syntax**:

```sql
TRUNCATE TABLE table_name;
```

**Example**:

```sql
TRUNCATE TABLE users;
```

- **Faster than `DELETE`** for clearing all data.
- **Caution**: This action cannot be rolled back unless executed within a transaction.

---

#### **5. Constraints**

Constraints enforce rules on the data in a table to maintain integrity.

**Common Constraints in PostgreSQL**:

1. **`PRIMARY KEY`**: Ensures each row has a unique identifier.

   ```sql
   UserID SERIAL PRIMARY KEY
   ```

2. **`FOREIGN KEY`**: Establishes relationships between tables.

   ```sql
   EmployerID INT REFERENCES employers(EmployerID)
   ```

3. **`NOT NULL`**: Ensures a column cannot have `NULL` values.

   ```sql
   Name VARCHAR(100) NOT NULL
   ```

4. **`UNIQUE`**: Ensures all values in a column are unique.

   ```sql
   Email VARCHAR(150) UNIQUE
   ```

5. **`CHECK`**: Enforces a condition on the data.

   ```sql
   Age INT CHECK (Age >= 18)
   ```

---

### **Example: Combining Key DDL Clauses**

Create a `users` table with various constraints:

```sql
CREATE TABLE users (
    UserID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE,
    Age INT CHECK (Age >= 18),
    JoinDate DATE DEFAULT CURRENT_DATE
);
```

Modify the `users` table to add a new column:

```sql
ALTER TABLE users
ADD COLUMN PhoneNumber VARCHAR(15);
```

Delete the `users` table:

```sql
DROP TABLE users;
```

---

### **Important Keywords & Definitions**

1. **`CREATE TABLE`**: Defines a new table.
2. **`ALTER TABLE`**: Modifies an existing table.
3. **`DROP TABLE`**: Deletes a table and its data.
4. **`TRUNCATE TABLE`**: Removes all rows from a table without deleting its structure.
5. **Constraint**: Rules applied to columns to ensure data integrity (`PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, etc.).

---

### **Exercises**

#### **Exercise 1: Create a Table**

Create a `products` table with the following columns:

- `ProductID` (Auto-incrementing primary key)
- `ProductName` (String, up to 100 characters, not null)
- `Price` (Decimal with 2 decimal places, must be greater than 0)

```sql
CREATE TABLE products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0)
);
```

---

#### **Exercise 2: Modify a Table**

Add a `Stock` column (Integer, default value `0`) to the `products` table.

```sql
ALTER TABLE products
ADD COLUMN Stock INT DEFAULT 0;
```

---

#### **Exercise 3: Drop a Table**

Drop the `products` table.

```sql
DROP TABLE products;
```

---

Let me know if you need further clarification or additional examples! 😊
