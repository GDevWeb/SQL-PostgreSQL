# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **31. Creating a New Database in PostgreSQL (Using SQLTools with VS Code)**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614000#overview)

---

#### **Overview**

In PostgreSQL, you can create a new database using the `CREATE DATABASE` command. This can be done via the **SQLTools extension in VS Code**, the command-line interface (`psql`), or any PostgreSQL client like **pgAdmin**.

---

### **1. Creating a Database Using SQLTools in VS Code**

#### **Step-by-Step Instructions**

1. **Open VS Code** and ensure you have the **SQLTools extension** installed.

2. **Connect to PostgreSQL** using SQLTools:

   - Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac).
   - Select `SQLTools: Manage Connections`.
   - Choose your PostgreSQL connection or create a new one with the following details:
     - **Name**: `LocalPostgres`
     - **Server**: `localhost`
     - **Port**: `5432`
     - **User**: `postgres`
     - **Password**: Your PostgreSQL password
     - **Database**: `postgres` (default database for connection)

3. **Create a New SQL File**:

   - Open a new `.sql` file in VS Code.

4. **Write the `CREATE DATABASE` Command**:

   ```sql
   CREATE DATABASE my_new_database;
   ```

5. **Execute the Query**:

   - Press `Ctrl+Alt+E` (Windows/Linux) or `Cmd+Option+E` (Mac) to run the query.
   - You should see a confirmation message indicating that the database was created successfully.

6. **Verify the Database**:

   - List all databases with the following query:

     ```sql
     SELECT datname FROM pg_database;
     ```

---

### **2. Creating a Database Using the `psql` Command-Line Tool**

1. **Open the Terminal** and connect to PostgreSQL:

   ```bash
   psql -U postgres
   ```

2. **Create a New Database**:

   ```sql
   CREATE DATABASE my_new_database;
   ```

3. **Verify the Creation**:

   ```sql
   \l
   ```

4. **Connect to the New Database**:

   ```sql
   \c my_new_database
   ```

---

### **3. Important Options for `CREATE DATABASE`**

You can customize the database creation with additional options:

**Syntax**:

```sql
CREATE DATABASE database_name
    [WITH]
    [OWNER = database_owner]
    [ENCODING = encoding]
    [LC_COLLATE = collate]
    [LC_CTYPE = ctype]
    [TEMPLATE = template];
```

#### **Example with Options**:

```sql
CREATE DATABASE my_new_database
WITH
    OWNER = my_user
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TEMPLATE = template0;
```

**Explanation**:

- **`OWNER`**: Assigns ownership of the database to a specific user.
- **`ENCODING`**: Sets the character encoding (e.g., `UTF8`).
- **`LC_COLLATE`**: Sets the locale for string sorting.
- **`LC_CTYPE`**: Sets the locale for character classification.
- **`TEMPLATE`**: Specifies the template database to use.

---

### **Common Errors & Troubleshooting**

1. **Database Already Exists**:

   - Error: `ERROR: database "my_new_database" already exists`
   - **Solution**: Use a different database name or drop the existing one with:
     ```sql
     DROP DATABASE my_new_database;
     ```

2. **Permission Denied**:

   - Ensure you are connected as a superuser or a user with database creation privileges.

3. **Connection Refused**:
   - Verify that the PostgreSQL server is running:
     ```bash
     sudo systemctl status postgresql
     ```

---

### **Exercises**

#### **Exercise 1: Create a Simple Database**

Create a database named `company_db` with default settings.

```sql
CREATE DATABASE company_db;
```

#### **Exercise 2: Create a Database with Options**

Create a database named `project_db` with the following options:

- **Owner**: `project_admin`
- **Encoding**: `UTF8`
- **Locale**: `en_US.UTF-8`

```sql
CREATE DATABASE project_db
WITH
    OWNER = project_admin
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8';
```

#### **Exercise 3: Verify Databases**

List all databases in your PostgreSQL instance.

```sql
SELECT datname FROM pg_database;
```

---

### **Summary**

- **`CREATE DATABASE`** is the command to create new databases in PostgreSQL.
- Use **SQLTools in VS Code** for a streamlined experience.
- Customize database creation with options like `OWNER`, `ENCODING`, and `TEMPLATE`.

Let me know if you need further assistance or additional examples! 😊
