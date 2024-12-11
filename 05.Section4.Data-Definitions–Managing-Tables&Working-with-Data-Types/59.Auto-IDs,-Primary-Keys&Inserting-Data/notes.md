# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **59. Auto-IDs, Primary Keys & Inserting Data in PostgreSQL and MySQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28634626#overview)

---

#### **Overview**

Auto-incrementing IDs and primary keys provide a reliable way to uniquely identify rows in your tables. These IDs are automatically generated when new data is inserted, making it easy to manage records and establish relationships between tables.

This lecture covers:

1. **Inserting Data with Auto-Incrementing IDs**
2. How **Primary Keys** ensure uniqueness
3. Using IDs to establish **relationships** between tables

---

### **1. Table Definitions with Auto-Incrementing IDs**

Let's define three tables: **`employers`**, **`users`**, and **`conversations`** with auto-incrementing IDs and primary keys.

#### **PostgreSQL Example**

```sql
CREATE TABLE employers (
    EmployerID SERIAL PRIMARY KEY,
    CompanyName VARCHAR(100) NOT NULL,
    CompanyAddress VARCHAR(255),
    YearlyRevenue DECIMAL(10, 2),
    IsHiring BOOLEAN
);

CREATE TABLE users (
    UserID SERIAL PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    YearlySalary DECIMAL(10, 2),
    CurrentStatus VARCHAR(50)
);

CREATE TABLE conversations (
    ConversationID SERIAL PRIMARY KEY,
    UserID INT REFERENCES users(UserID),
    EmployerID INT REFERENCES employers(EmployerID),
    Message TEXT NOT NULL
);
```

#### **MySQL Example**

```sql
CREATE TABLE employers (
    EmployerID INT AUTO_INCREMENT PRIMARY KEY,
    CompanyName VARCHAR(100) NOT NULL,
    CompanyAddress VARCHAR(255),
    YearlyRevenue DECIMAL(10, 2),
    IsHiring BOOLEAN
);

CREATE TABLE users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    YearlySalary DECIMAL(10, 2),
    CurrentStatus VARCHAR(50)
);

CREATE TABLE conversations (
    ConversationID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    EmployerID INT,
    Message TEXT NOT NULL,
    FOREIGN KEY (UserID) REFERENCES users(UserID),
    FOREIGN KEY (EmployerID) REFERENCES employers(EmployerID)
);
```

---

### **2. Inserting Data with Auto-Incrementing IDs**

#### **Inserting into `employers` Table**

You don't need to provide a value for the `EmployerID` because it is auto-incremented.

```sql
INSERT INTO employers (CompanyName, CompanyAddress, YearlyRevenue, IsHiring)
VALUES ('Some Company Inc', 'Some Street 5, Mycity', 85.91, TRUE);
```

#### **Result**

```sql
SELECT * FROM employers;
```

**Output:**

| EmployerID | CompanyName      | CompanyAddress        | YearlyRevenue | IsHiring |
| ---------- | ---------------- | --------------------- | ------------- | -------- |
| 1          | Some Company Inc | Some Street 5, Mycity | 85.91         | TRUE     |

---

#### **Inserting into `users` Table**

```sql
INSERT INTO users (FullName, YearlySalary, CurrentStatus)
VALUES ('Frank Meyer', 30000, 'self-employed');
```

#### **Result**

```sql
SELECT * FROM users;
```

**Output:**

| UserID | FullName    | YearlySalary | CurrentStatus |
| ------ | ----------- | ------------ | ------------- |
| 1      | Frank Meyer | 30000        | self-employed |

---

### **3. Establishing Relationships Between Tables**

The unique IDs generated for `users` and `employers` can be used to create relationships in the `conversations` table.

#### **Inserting into `conversations` Table**

```sql
INSERT INTO conversations (UserID, EmployerID, Message)
VALUES (1, 1, 'Hi there!');
```

#### **Result**

```sql
SELECT * FROM conversations;
```

**Output:**

| ConversationID | UserID | EmployerID | Message   |
| -------------- | ------ | ---------- | --------- |
| 1              | 1      | 1          | Hi there! |

---

### **4. Viewing Related Data**

You can join tables to see related information.

#### **Example Query: Joining `users` and `employers` via `conversations`**

```sql
SELECT
    c.ConversationID,
    u.FullName AS UserName,
    e.CompanyName AS EmployerName,
    c.Message
FROM conversations c
JOIN users u ON c.UserID = u.UserID
JOIN employers e ON c.EmployerID = e.EmployerID;
```

**Output:**

| ConversationID | UserName    | EmployerName     | Message   |
| -------------- | ----------- | ---------------- | --------- |
| 1              | Frank Meyer | Some Company Inc | Hi there! |

---

### **5. Important Concepts to Remember**

1. **Auto-Incrementing IDs**:

   - Automatically generate unique IDs for new rows.
   - No need to manually provide values for these columns.

2. **Primary Keys**:

   - Guarantee the uniqueness of IDs in each table.
   - Prevent duplicate IDs.

3. **Relationships**:
   - Auto-generated IDs can be used as **foreign keys** to link rows between tables.
   - This enables querying related data across multiple tables.

---

### **Exercises**

#### **Exercise 1: Insert Data into `employers`**

Insert two more employers:

```sql
INSERT INTO employers (CompanyName, CompanyAddress, YearlyRevenue, IsHiring)
VALUES
    ('Tech Solutions Ltd', 'Innovation Park, Cityville', 120.50, TRUE),
    ('Global Finance Corp', 'Finance Street 10, Metropolis', 300.75, FALSE);
```

#### **Exercise 2: Insert Data into `users`**

Insert two more users:

```sql
INSERT INTO users (FullName, YearlySalary, CurrentStatus)
VALUES
    ('Jane Smith', 45000, 'employed'),
    ('John Doe', 55000, 'freelancer');
```

#### **Exercise 3: Insert Conversations**

Link the users and employers by adding conversations:

```sql
INSERT INTO conversations (UserID, EmployerID, Message)
VALUES
    (2, 1, 'Hello, I am interested in your company!'),
    (3, 3, 'Do you have any open positions?');
```

#### **Exercise 4: Query the Conversations**

Join the `users` and `employers` tables through the `conversations` table to see the messages:

```sql
SELECT
    c.ConversationID,
    u.FullName AS UserName,
    e.CompanyName AS EmployerName,
    c.Message
FROM conversations c
JOIN users u ON c.UserID = u.UserID
JOIN employers e ON c.EmployerID = e.EmployerID;
```

---

### **Summary**

- **Auto-incrementing IDs** simplify the insertion of unique identifiers.
- **Primary keys** ensure uniqueness and prevent duplicate IDs.
- Use auto-generated IDs to establish **relationships** between tables.
- You can join tables to query and view related data.

Let me know if you need further clarification or additional examples! 😊
