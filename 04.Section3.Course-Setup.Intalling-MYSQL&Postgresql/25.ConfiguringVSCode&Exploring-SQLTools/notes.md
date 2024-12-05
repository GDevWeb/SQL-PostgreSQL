# **Section 3: Course Setup - Installing MySQL & PostgreSQL**

## **25. Configuring VS Code & Exploring SQLTools**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28611992#overview)

---

#### **Overview**

In this lesson, you'll configure Visual Studio Code for an optimized SQL development experience using the **SQLTools** extension. We'll also explore the key features of SQLTools to help you work efficiently with MySQL, PostgreSQL, and other database systems.

---

### **Step-by-Step Guide**

#### **Step 1: Configure VS Code for SQL Development**

1. **Install SQLTools**:

   - Ensure the **SQLTools** extension is installed (if not, refer to the previous lesson).

2. **Set Up Workspace Settings**:

   - Open **File → Preferences → Settings** (or `Ctrl+,` on Windows/Linux, `Cmd+,` on Mac).
   - Search for "SQLTools" in the settings search bar.
   - Configure the following options:
     - **Auto Save Connections**: Enable this to save connection settings automatically.
     - **Log Level**: Set to `info` for detailed logs.
     - **Results Display**: Choose to display query results in a new tab or inline.

3. **Install Syntax Highlighting**:

   - Install the **SQL Language Support** extension from the VS Code marketplace for better syntax highlighting in `.sql` files.

4. **Customize Keyboard Shortcuts**:
   - Open **File → Preferences → Keyboard Shortcuts**.
   - Search for `SQLTools` and assign shortcuts for:
     - Executing queries.
     - Connecting to databases.
     - Managing connections.

---

#### **Step 2: Add Database Connections**

1. Open the **SQLTools Connection Manager**:

   - Use `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac).
   - Type `SQLTools: Add New Connection` and select it.

2. **Add a Connection**:
   - Choose the database type (`MySQL/MariaDB` or `PostgreSQL`).
   - Enter the connection details:
     - **Name**: Assign a unique name (e.g., `MyLocalMySQL` or `MyLocalPostgres`).
     - **Server**: Use `localhost` for local connections.
     - **Port**: Default is `3306` for MySQL and `5432` for PostgreSQL.
     - **Username/Password**: Provide your database credentials.
     - **Database**: (Optional) Specify a default database.
   - Test the connection and save.

---

#### **Step 3: Exploring SQLTools Features**

1. **Running Queries**:

   - Open a `.sql` file and write a query:
     ```sql
     SELECT * FROM Employees;
     ```
   - Execute the query with the shortcut `Ctrl+Alt+E` (Windows/Linux) or `Cmd+Option+E` (Mac).

2. **Viewing Results**:

   - Query results will appear in a new tab or inline, based on your settings.
   - Results can be copied, exported, or filtered.

3. **Autocomplete and IntelliSense**:

   - SQLTools provides autocomplete for table names, column names, and SQL keywords.

4. **Database Explorer**:

   - Open the **SQLTools Sidebar** to view all connected databases.
   - Expand database nodes to explore tables, columns, and schemas.

5. **Executing Multiple Queries**:

   - Write multiple queries in a `.sql` file separated by semicolons:
     ```sql
     SELECT * FROM Employees;
     SELECT COUNT(*) FROM Employees;
     ```
   - Execute all queries at once, or highlight a specific query to execute it.

6. **Exporting Query Results**:

   - Right-click on query results and export them as a CSV, JSON, or Excel file.

7. **Connection Management**:
   - Easily switch between multiple database connections from the SQLTools sidebar.

---

### **Common Troubleshooting Tips**

1. **Query Errors**:

   - Check the SQL syntax and ensure the database connection is active.

2. **Connection Fails**:

   - Verify your server is running and credentials are correct.
   - Check firewall settings for blocked ports (`3306` or `5432`).

3. **Autocomplete Not Working**:
   - Ensure you’re connected to the database and the driver is correctly installed.

---

### **Important Keywords & Definitions**

1. **SQLTools**: A VS Code extension that simplifies database management and querying.
2. **Database Explorer**: A sidebar feature in SQLTools that allows you to navigate database tables and schemas.
3. **IntelliSense**: A feature that provides code suggestions and autocompletion for SQL queries.
4. **Query Results**: The output generated after executing an SQL query.

---

### **Exercises**

#### **Exercise 1: Configure SQLTools**

1. Open VS Code and set SQLTools to:
   - Save connections automatically.
   - Display query results in a new tab.
2. Test the settings by running a simple query.

---

#### **Exercise 2: Explore Database Tables**

1. Connect to your local MySQL or PostgreSQL database using SQLTools.
2. Use the **Database Explorer** to list all tables in the `TestDB` database.

---

#### **Exercise 3: Run and Export a Query**

1. Write and run a query to retrieve all rows from the `Employees` table:
   ```sql
   SELECT * FROM Employees;
   ```
2. Export the query results as a CSV file.

---

Let me know if you’d like help customizing your SQLTools setup or need additional exercises!
