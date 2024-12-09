# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **29. Introducing The Course Section Example**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28613994#overview)
- [schema - outline section](pdf/outline-section.png)

---

### **Overview of the Example**

In this course section, we’ll use a practical example based on a company called **Talently** that manages talents. The example database includes tables relevant to talent management, such as:

1. **Employers**: Companies or individuals looking to hire talent.
2. **Users**: Talents or individuals offering skills and services.
3. **Conversations**: Communication or messages exchanged between employers and users.

---

### **Database Structure**

- **Database Name**: `Talently`
- **Tables**:
  - **`employers`**
  - **`users`**
  - **`conversations`**

This structure helps illustrate how relational databases manage real-world entities and their relationships.

---

### **Table Descriptions**

1. **`employers` Table**  
   Stores details about employers.

   - **Example Columns**:
     - `EmployerID` (Primary Key, `INT`)
     - `CompanyName` (`VARCHAR`)
     - `ContactEmail` (`VARCHAR`)

2. **`users` Table**  
   Stores details about users/talents.

   - **Example Columns**:
     - `UserID` (Primary Key, `INT`)
     - `Name` (`VARCHAR`)
     - `Skills` (`TEXT`)
     - `Email` (`VARCHAR`)

3. **`conversations` Table**  
   Tracks communication between employers and users.
   - **Example Columns**:
     - `ConversationID` (Primary Key, `INT`)
     - `EmployerID` (Foreign Key referencing `employers`)
     - `UserID` (Foreign Key referencing `users`)
     - `Message` (`TEXT`)
     - `Timestamp` (`DATETIME`)

---

### **Relationships Between Tables**

1. **Employers ↔ Users**:

   - Connected through the **`conversations`** table.
   - Employers and users can exchange messages.

2. **Foreign Keys**:
   - **`EmployerID`** in the `conversations` table references the `EmployerID` in the `employers` table.
   - **`UserID`** in the `conversations` table references the `UserID` in the `users` table.

---

### **Example SQL Statements**

#### **1. Creating the Tables**

1. **`employers` Table**:

   ```sql
   CREATE TABLE employers (
       EmployerID INT PRIMARY KEY,
       CompanyName VARCHAR(100),
       ContactEmail VARCHAR(100)
   );
   ```

2. **`users` Table**:

   ```sql
   CREATE TABLE users (
       UserID INT PRIMARY KEY,
       Name VARCHAR(100),
       Skills TEXT,
       Email VARCHAR(100)
   );
   ```

3. **`conversations` Table**:
   ```sql
   CREATE TABLE conversations (
       ConversationID INT PRIMARY KEY,
       EmployerID INT,
       UserID INT,
       Message TEXT,
       Timestamp DATETIME,
       FOREIGN KEY (EmployerID) REFERENCES employers(EmployerID),
       FOREIGN KEY (UserID) REFERENCES users(UserID)
   );
   ```

---

#### **2. Inserting Data into Tables**

1. **Insert Data into the `employers` Table**:

   ```sql
   INSERT INTO employers (EmployerID, CompanyName, ContactEmail)
   VALUES (1, 'TechCorp', 'contact@techcorp.com');
   ```

2. **Insert Data into the `users` Table**:

   ```sql
   INSERT INTO users (UserID, Name, Skills, Email)
   VALUES (1, 'Alice Smith', 'JavaScript, React', 'alice@example.com');
   ```

3. **Insert Data into the `conversations` Table**:

   ```sql
   INSERT INTO conversations (ConversationID, EmployerID, UserID, Message, Timestamp)
   VALUES (1, 1, 1, 'We’re interested in your skills. Are you available for a project?', NOW());
   ```

---

### **Important Keywords & Definitions**

1. **`INSERT INTO`**: The SQL statement used to add new rows of data into a table.
2. **`VALUES`**: Specifies the values to be inserted into each column.
3. **`NOW()`**: A function that returns the current date and time.
4. **Primary Key**: A unique identifier for each row in a table.
5. **Foreign Key**: A column that references the primary key in another table to establish a relationship.

---

### **Exercises**

#### **Exercise 1: Insert an Employer**

Add a new employer to the `employers` table with the following details:

- `EmployerID`: 2
- `CompanyName`: "InnovateX"
- `ContactEmail`: "hello@innovatex.com"

```sql
INSERT INTO employers (EmployerID, CompanyName, ContactEmail)
VALUES (2, 'InnovateX', 'hello@innovatex.com');
```

---

#### **Exercise 2: Insert a User**

Add a new user to the `users` table with the following details:

- `UserID`: 2
- `Name`: "John Doe"
- `Skills`: "Python, Data Analysis"
- `Email`: "john@example.com"

```sql
INSERT INTO users (UserID, Name, Skills, Email)
VALUES (2, 'John Doe', 'Python, Data Analysis', 'john@example.com');
```

---

#### **Exercise 3: Create a Conversation**

Add a new conversation between `InnovateX` (EmployerID: 2) and `John Doe` (UserID: 2) with the following message:

- **Message**: "We’d like to discuss a potential data analysis project."
- **Timestamp**: Current date and time

```sql
INSERT INTO conversations (ConversationID, EmployerID, UserID, Message, Timestamp)
VALUES (2, 2, 2, 'We’d like to discuss a potential data analysis project.', NOW());
```

---

### **Next Steps**

Practice creating and inserting data into these tables to get comfortable with DDL and `INSERT` statements. Let me know if you need more examples or additional explanations! 😊
