# **Section 3: Course Setup - Installing MySQL & PostgreSQL**

## 22. Starting & Stopping Servers + Uninstalling Database Systems

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614354#overview)

---

#### **Managing Database Servers**

After installing MySQL and PostgreSQL, you may need to start, stop, or restart the database servers as part of managing your setup. Here are the key commands and steps for both systems.

---

### **MySQL**

#### **Starting the MySQL Server**

1. **Windows**:

   - Open the **Services** application (press `Win + R` → type `services.msc`).
   - Locate **MySQL** in the list.
   - Right-click → **Start**.

2. **macOS/Linux**:
   - Open a terminal and run:
     ```bash
     sudo service mysql start
     ```
   - For systems using `systemctl`:
     ```bash
     sudo systemctl start mysql
     ```

#### **Stopping the MySQL Server**

1. **Windows**:

   - Open the **Services** application.
   - Locate **MySQL** → Right-click → **Stop**.

2. **macOS/Linux**:
   - Use the following command:
     ```bash
     sudo service mysql stop
     ```
   - Or with `systemctl`:
     ```bash
     sudo systemctl stop mysql
     ```

#### **Restarting the MySQL Server**

- On any system, restart the MySQL server to apply configuration changes:
  ```bash
  sudo service mysql restart
  ```

#### **Uninstalling MySQL**

1. **Windows**:

   - Go to **Control Panel → Programs → Uninstall a program**.
   - Find **MySQL Server** → Uninstall.
   - Remove the **MySQL Data Directory** (usually found in `C:\ProgramData\MySQL`).

2. **macOS/Linux**:
   - Use your package manager:
     ```bash
     sudo apt-get remove mysql-server
     sudo apt-get purge mysql-server
     sudo apt-get autoremove
     ```

---

### **PostgreSQL**

#### **Starting the PostgreSQL Server**

1. **Windows**:

   - Open the **Services** application.
   - Locate **PostgreSQL** in the list.
   - Right-click → **Start**.

2. **macOS/Linux**:
   - Start PostgreSQL using:
     ```bash
     sudo service postgresql start
     ```
   - For systems using `systemctl`:
     ```bash
     sudo systemctl start postgresql
     ```

#### **Stopping the PostgreSQL Server**

1. **Windows**:

   - Open the **Services** application.
   - Locate **PostgreSQL** → Right-click → **Stop**.

2. **macOS/Linux**:
   - Use the following command:
     ```bash
     sudo service postgresql stop
     ```
   - Or with `systemctl`:
     ```bash
     sudo systemctl stop postgresql
     ```

#### **Restarting the PostgreSQL Server**

- Restart PostgreSQL to apply any configuration changes:
  ```bash
  sudo service postgresql restart
  ```

#### **Uninstalling PostgreSQL**

1. **Windows**:

   - Go to **Control Panel → Programs → Uninstall a program**.
   - Find **PostgreSQL** → Uninstall.
   - Remove the PostgreSQL **Data Directory** (usually found in `C:\Program Files\PostgreSQL`).

2. **macOS/Linux**:
   - Use your package manager:
     ```bash
     sudo apt-get remove postgresql
     sudo apt-get purge postgresql
     sudo apt-get autoremove
     ```

---

### **Resources**

- **MySQL Official Documentation**: [MySQL Documentation](https://dev.mysql.com/doc/)
- **PostgreSQL Official Documentation**: [PostgreSQL Documentation](https://www.postgresql.org/docs/)

---

### **Important Keywords & Definitions**

1. **Service**: A background application running on your system, like a database server.
2. **systemctl**: A system management tool used in Linux distributions to manage services.
3. **Data Directory**: A folder where a database stores its data files.
4. **Uninstall**: The process of removing a program and its associated files from your system.

---

### **Exercises**

#### **Exercise 1: Start and Stop MySQL**

- Start the MySQL server, then stop it. Confirm the status after each step using the terminal or services manager.

#### **Exercise 2: Start and Stop PostgreSQL**

- Start the PostgreSQL server, then stop it. Verify the status using your preferred method.

#### **Exercise 3: Restart a Server**

- Restart both MySQL and PostgreSQL servers and confirm they are running correctly.

---
