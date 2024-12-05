# **Section 3: Course Setup - Installing MySQL & PostgreSQL**

## **26. More on VS Code & SQLTools**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28611994#overview)

---

### **Overview**

In this course, we'll primarily use **VS Code with the SQLTools extension** to interact with databases. This setup offers several benefits:

1. A **uniform interface** for working with MySQL, PostgreSQL, and other database systems.
2. The ability to save SQL queries in reusable `.sql` files.
3. Integration with your development workflow within VS Code.

That said, you can use any database client you're comfortable with (e.g., MySQL Workbench, pgAdmin, or DBeaver). This lesson focuses on optimizing SQLTools settings for a smooth experience.

---

### **Customizing SQLTools Settings**

#### **Step 1: Open SQLTools Settings**

1. Open **User Settings** or **Workspace Settings** in VS Code:

   - Press `Ctrl+,` (Windows/Linux) or `Cmd+,` (Mac) to open the Settings menu.
   - Alternatively, go to **File → Preferences → Settings**.

2. Search for `SQLTools` in the search bar.

---

#### **Step 2: Explore Key SQLTools Settings**

Here are the most important settings to consider:

1. **Auto Open Session Files**:

   - **Default Behavior**: Opens a new `.sql` file every time you switch database connections.
   - **Recommendation**: Disable this if you find it disruptive.
   - To disable:
     - Search for `Auto Open Session Files`.
     - Uncheck the box or set the value to `false`.

2. **Results Display**:

   - Determines how query results are shown.
   - Options:
     - **New Tab**: Opens results in a new editor tab.
     - **Inline**: Displays results below the query in the same tab.
   - To customize:
     - Search for `Results Display`.
     - Choose your preferred display mode.

3. **Query Timeout**:

   - Sets the maximum time (in seconds) a query is allowed to run before timing out.
   - To adjust:
     - Search for `Query Timeout`.
     - Set an appropriate value (e.g., `30` seconds).

4. **Auto Save Connections**:

   - Automatically saves database connection details.
   - Recommended for most users to avoid re-entering credentials.
   - To enable:
     - Search for `Auto Save Connections`.
     - Check the box or set the value to `true`.

5. **Enable IntelliSense**:
   - Provides autocompletion and suggestions for SQL keywords, tables, and columns.
   - Ensure this is enabled for a smoother coding experience.

---

#### **Step 3: Adjust Project-Specific Settings (Optional)**

- If you’re working on multiple projects with different database setups, consider using **Workspace Settings** instead of global settings.
- To open workspace-specific settings:
  - Go to **File → Preferences → Workspace Settings**.
  - Adjust SQLTools settings for the specific project.

---

### **Benefits of Customization**

1. Streamlined query execution.
2. Reduced distractions by disabling unnecessary features.
3. Better alignment with your personal workflow and project requirements.

---

### **Important Keywords & Definitions**

1. **Auto Open Session Files**: A feature that opens a new `.sql` file automatically when switching database connections.
2. **Query Timeout**: The maximum time allowed for a query to execute before it times out.
3. **IntelliSense**: Autocompletion and syntax suggestions for SQL queries.
4. **User Settings**: Global settings applied to all VS Code projects.
5. **Workspace Settings**: Project-specific settings that override global ones.

---

### **Exercises**

#### **Exercise 1: Disable Auto Open Session Files**

1. Open VS Code **Settings**.
2. Search for `Auto Open Session Files`.
3. Disable this feature by unchecking the box or setting the value to `false`.

---

#### **Exercise 2: Customize Results Display**

1. In VS Code **Settings**, search for `Results Display`.
2. Change the setting to `New Tab` or `Inline`.
3. Test the results by running a query:
   ```sql
   SELECT * FROM Employees;
   ```

---

#### **Exercise 3: Test IntelliSense**

1. Connect to your database using SQLTools.
2. Create a `.sql` file and start typing a query, such as:
   ```sql
   SELECT * FROM
   ```
3. Observe how IntelliSense suggests table names.

---

### **Optional Recommendations**

- Regularly update the SQLTools extension and drivers for compatibility with the latest database features.
- Explore advanced SQLTools features, such as exporting query results and executing multiple queries.

Let me know if you need help fine-tuning your SQLTools setup or solving issues!
