# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **32. Deleting Databases & `IF NOT EXISTS` in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28701280#overview)

---

### **Deleting Databases in PostgreSQL**

In PostgreSQL, you can delete (drop) a database using the `DROP DATABASE` command. This operation permanently removes the database and all of its data, so use it with caution.

---

### **1. `DROP DATABASE` Command**

#### **Syntax**:

```sql
DROP DATABASE database_name;
```

#### **Example**:

To delete a database named `my_new_database`:

```sql
DROP DATABASE my_new_database;
```

#### **Important Considerations**:

- You **cannot drop a database while connected to it**. Switch to a different database (like `postgres`) before running the `DROP DATABASE` command.
- Only a **superuser** or the **database owner** can drop a database.

#### **Switch to Another Database**:

Before dropping a database, connect to a different one:

```sql
\c postgres
```

Then drop the target database:

```sql
DROP DATABASE my_new_database;
```

---

### **2. Deleting a Database If It Exists**

PostgreSQL supports the `IF EXISTS` clause to avoid errors if the database does not exist.

#### **Syntax**:

```sql
DROP DATABASE IF EXISTS database_name;
```

#### **Example**:

```sql
DROP DATABASE IF EXISTS my_new_database;
```

- If the database exists, it will be deleted.
- If it doesn’t exist, no error will be thrown.

---

### **3. `IF NOT EXISTS` with `CREATE DATABASE` (Not Available in PostgreSQL)**

Unlike MySQL, PostgreSQL **does not support** the `IF NOT EXISTS` clause with the `CREATE DATABASE` command. Attempting to create a database that already exists will result in an error.

#### **Alternative Approach**:

You can check if a database exists before creating it by using a procedural approach with `DO` blocks:

```sql
DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'my_new_database') THEN
        PERFORM dblink_exec('dbname=postgres', 'CREATE DATABASE my_new_database');
    END IF;
END $$;
```

This requires the `dblink` extension, which allows SQL queries to be executed in a different database connection.

---

### **4. `IF NOT EXISTS` with `CREATE TABLE`**

While PostgreSQL doesn't support `IF NOT EXISTS` for `CREATE DATABASE`, it **does support it for `CREATE TABLE`**.

#### **Example**:

```sql
CREATE TABLE IF NOT EXISTS users (
    UserID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);
```

This creates the `users` table if it doesn’t already exist. If the table exists, the command does nothing and no error is thrown.

---

### **Summary of Key Commands**

| **Command**                     | **PostgreSQL Support** |
| ------------------------------- | ---------------------- |
| `DROP DATABASE IF EXISTS`       | ✅ Supported           |
| `CREATE DATABASE IF NOT EXISTS` | ❌ Not Supported       |
| `CREATE TABLE IF NOT EXISTS`    | ✅ Supported           |

---

### **Exercises**

#### **Exercise 1: Delete a Database**

Delete a database named `test_db` if it exists.

```sql
DROP DATABASE IF EXISTS test_db;
```

---

#### **Exercise 2: Create a Table with `IF NOT EXISTS`**

Create a `products` table with the following columns if it doesn’t already exist:

- `ProductID` (Primary Key, Auto-increment)
- `ProductName` (String, up to 100 characters)

```sql
CREATE TABLE IF NOT EXISTS products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL
);
```

---

Let me know if you need more examples or explanations! 😊
