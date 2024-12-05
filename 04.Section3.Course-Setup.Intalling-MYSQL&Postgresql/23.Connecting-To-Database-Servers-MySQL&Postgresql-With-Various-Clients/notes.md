# **Section 3: Course Setup - Installing MySQL & PostgreSQL**

## 23. Connecting To Database Servers (MySQL & Postgresql) With Various Clients

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28611998#overview)

---

#### **Overview**

To interact with MySQL and PostgreSQL, you'll use **clients** like graphical tools, command-line interfaces, or extensions in IDEs. This lesson explains how to connect to your database servers using commonly used tools.

---

### **1. Connecting to MySQL**

#### **Using MySQL Workbench** (Graphical Client)

1. Open **MySQL Workbench**.
2. Click the **`+`** icon to create a new connection.
3. Fill in the connection details:
   - **Connection Name**: Name your connection (e.g., `MyLocalMySQL`).
   - **Hostname**: Use `localhost` (or IP address if remote).
   - **Port**: Default is `3306`.
   - **Username**: Default is `root`.
   - **Password**: Enter the root password you set during installation.
4. Click **Test Connection** to verify, then click **OK**.

#### **Using MySQL Command-Line Tool**

1. Open your terminal or command prompt.
2. Connect to the MySQL server using:
   ```bash
   mysql -u root -p
   ```
3. Enter your password when prompted. You’ll now see the MySQL shell.

#### **Using Third-Party Tools (e.g., DBeaver, VS Code)**

1. Open the tool and create a new database connection.
2. Fill in the required details:
   - **Database Type**: Select MySQL.
   - **Hostname**: Use `localhost`.
   - **Port**: Default is `3306`.
   - **Username/Password**: Use your credentials.
3. Test the connection and save.

---

### **2. Connecting to PostgreSQL**

#### **Using pgAdmin** (Graphical Client)

1. Open **pgAdmin**.
2. Right-click **Servers** in the left panel → Select **Create → Server**.
3. Fill in the connection details:
   - **General Tab**:
     - **Name**: Name your server connection (e.g., `MyLocalPostgres`).
   - **Connection Tab**:
     - **Hostname/Address**: Use `localhost`.
     - **Port**: Default is `5432`.
     - **Maintenance Database**: Default is `postgres`.
     - **Username**: Default is `postgres`.
     - **Password**: Enter the password you set during installation.
4. Click **Save** to connect.

#### **Using psql Command-Line Tool**

1. Open your terminal.
2. Connect to PostgreSQL using:
   ```bash
   psql -U postgres
   ```
3. Enter your password when prompted. You’ll now see the PostgreSQL shell.

#### **Using Third-Party Tools (e.g., DBeaver, VS Code)**

1. Open the tool and create a new database connection.
2. Fill in the required details:
   - **Database Type**: Select PostgreSQL.
   - **Hostname**: Use `localhost`.
   - **Port**: Default is `5432`.
   - **Username/Password**: Use your credentials.
3. Test the connection and save.

---

### **Common Connection Issues**

1. **Firewall Blocking Connection**:
   - Ensure port `3306` (MySQL) or `5432` (PostgreSQL) is open for local or remote access.
2. **Wrong Credentials**:
   - Double-check your username and password.
3. **Server Not Running**:
   - Verify that the MySQL/PostgreSQL service is running:
     ```bash
     sudo service mysql status
     sudo service postgresql status
     ```

---

### **Important Keywords & Definitions**

1. **Client**: A tool or application that connects to a database server to run queries or manage data.
2. **Hostname**: The address of the server hosting the database. For local servers, use `localhost`.
3. **Port**: The communication endpoint. Default ports are `3306` (MySQL) and `5432` (PostgreSQL).
4. **pgAdmin**: A graphical interface for managing PostgreSQL.
5. **MySQL Workbench**: A graphical tool for managing MySQL databases.
6. **psql**: The command-line client for PostgreSQL.
7. **mysql**: The command-line client for MySQL.

---

### **Exercises**

#### **Exercise 1: Connect to MySQL via MySQL Workbench**

1. Open MySQL Workbench and create a new connection.
2. Test the connection with `localhost` and port `3306`.
3. Verify by listing all databases:
   ```sql
   SHOW DATABASES;
   ```

---

#### **Exercise 2: Connect to PostgreSQL via pgAdmin**

1. Open pgAdmin and create a new server connection.
2. Test the connection with `localhost` and port `5432`.
3. Verify by listing all databases:
   ```sql
   SELECT datname FROM pg_database;
   ```

---

#### **Exercise 3: Use Command-Line Clients**

1. Connect to MySQL using the `mysql` tool:
   ```bash
   mysql -u root -p
   SHOW DATABASES;
   ```
2. Connect to PostgreSQL using the `psql` tool:
   ```bash
   psql -U postgres
   \l
   ```

---

Let me know if you encounter issues during setup or need help troubleshooting your connections!
