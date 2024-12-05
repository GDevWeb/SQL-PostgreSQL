# **Section 3: Course Setup - Installing MySQL & PostgreSQL**

## **24. Setting Up Visual Studio Code With The SQLTools Extension**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28611986#overview)
- [Switching auth mode SQL (MySQL)](https://github.com/academind/sql-complete-guide-code/blob/03-setup/sql/switch-auth-mode.sql)

---

### **Why Use SQLTools in VS Code?**

The **SQLTools** extension allows you to:

- Manage MySQL, PostgreSQL, and other database connections directly within Visual Studio Code.
- Execute queries, view results, and manage databases without leaving your code editor.
- Simplify your workflow by integrating database operations with development tasks.

---

### **Step-by-Step Setup**

#### **Step 1: Install Visual Studio Code**

1. Download and install VS Code from the [official website](https://code.visualstudio.com/).
2. Open VS Code after installation.

---

Ann@beth59.

#### **Step 2: Install SQLTools Extension**

1. Open the **Extensions Marketplace** in VS Code:
   - Press `Ctrl+Shift+X` (Windows/Linux) or `Cmd+Shift+X` (Mac).
2. Search for **SQLTools** in the Extensions search bar.
3. Click **Install** next to the **SQLTools** extension by **mtxr**.

---

#### **Step 3: Install Database Drivers**

SQLTools requires drivers to connect to specific databases. Install the necessary drivers:

1. Open the **SQLTools Settings** panel:
   - Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac).
   - Type `SQLTools: Install Drivers` and select it.
2. Select the drivers you need:
   - **MySQL/MariaDB** for MySQL.
   - **PostgreSQL** for PostgreSQL.
3. Wait for the drivers to download and install.

---

#### **Step 4: Add Database Connections**

To connect to your databases:

1. Open the SQLTools Connections Manager:
   - Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac).
   - Type `SQLTools: Add New Connection` and select it.
2. Choose the database type:
   - **MySQL/MariaDB** for MySQL.
   - **PostgreSQL** for PostgreSQL.
3. Fill in the connection details:
   - **Name**: Name your connection (e.g., `MyLocalMySQL`).
   - **Server**: Use `localhost` (or IP address for remote connections).
   - **Port**: Default is `3306` for MySQL and `5432` for PostgreSQL.
   - **Username**: Use your database username (e.g., `root` for MySQL or `postgres` for PostgreSQL).
   - **Password**: Enter your database password.
   - **Database**: Specify a default database or leave it blank to list all.
4. Test the connection by clicking **Test Connection**.
5. Save the connection.

---

#### **Step 5: Running SQL Queries**

1. Open a new `.sql` file in VS Code.
2. Write your SQL query:
   ```sql
   SELECT * FROM Employees;
   ```
3. Press `Ctrl+Alt+E` (Windows/Linux) or `Cmd+Option+E` (Mac) to execute the query.
4. View the query results in the SQLTools Output panel.

---

### **Optional: Setting Up Keyboard Shortcuts**

You can customize shortcuts for SQLTools:

1. Open **File → Preferences → Keyboard Shortcuts**.
2. Search for `SQLTools`.
3. Assign custom shortcuts to frequently used commands like:
   - Executing queries.
   - Connecting to a database.

---

### **Common Issues and Troubleshooting**

1. **Driver Not Found**:
   - Ensure the SQLTools driver for your database type is installed correctly.
2. **Connection Failed**:
   - Check your server status (`MySQL` or `PostgreSQL`) and verify credentials.
3. **No Results in Output**:
   - Ensure your query syntax is correct and the connection is active.

---

### **Important Keywords & Definitions**

1. **SQLTools**: A VS Code extension that enables database management within the editor.
2. **Driver**: A piece of software that enables communication between SQLTools and a specific database type.
3. **Query**: A command or statement used to interact with a database.
4. **Connection Manager**: The SQLTools interface for configuring and managing database connections.

---

### **Exercises**

#### **Exercise 1: Install SQLTools**

1. Install SQLTools in VS Code.
2. Install the drivers for both **MySQL** and **PostgreSQL**.

---

#### **Exercise 2: Connect to a Database**

1. Add a connection for your local MySQL database:
   - Use the connection name `MyLocalMySQL`.
2. Add a connection for your local PostgreSQL database:
   - Use the connection name `MyLocalPostgres`.

---

#### **Exercise 3: Run a Query**

1. Open a new `.sql` file and write a query to retrieve all rows from the `Employees` table:
   ```sql
   SELECT * FROM Employees;
   ```
2. Execute the query using the SQLTools shortcut.

---
