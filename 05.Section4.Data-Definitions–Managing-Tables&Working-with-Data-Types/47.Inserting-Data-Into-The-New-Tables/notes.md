# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **47. Inserting Data into the New Tables in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614042#overview)

---

#### **Overview**

In this lesson, we’ll insert data into the newly created tables: **`messages`** and **`logs`**. We’ll use different techniques for inserting data, including inserting single rows, multiple rows, and using default values.

---

### **Recap of Table Definitions**

#### **`messages` Table**

```sql
CREATE TABLE messages (
    MessageID SERIAL PRIMARY KEY,
    Content TEXT NOT NULL,
    Sender VARCHAR(100) NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### **`logs` Table**

```sql
CREATE TABLE logs (
    LogID SERIAL PRIMARY KEY,
    Message TEXT NOT NULL,
    LogLevel VARCHAR(50) NOT NULL,
    LoggedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

---

### **1. Inserting Data into the `messages` Table**

#### **Insert Single Row**

```sql
INSERT INTO messages (Content, Sender)
VALUES ('Hello, this is the first message.', 'Alice Johnson');
```

#### **Insert Multiple Rows**

```sql
INSERT INTO messages (Content, Sender)
VALUES
    ('Meeting scheduled for tomorrow at 10 AM.', 'Bob Smith'),
    ('Project deadline extended to next week.', 'Catherine Lee'),
    ('Don’t forget the team lunch on Friday.', 'David Brown');
```

#### **Using Default Values**

If you want to rely on the default `CreatedAt` and `UpdatedAt` timestamps:

```sql
INSERT INTO messages (Content, Sender)
VALUES ('System update completed successfully.', 'System Admin');
```

---

### **2. Inserting Data into the `logs` Table**

#### **Insert Single Row**

```sql
INSERT INTO logs (Message, LogLevel)
VALUES ('Application started successfully.', 'INFO');
```

#### **Insert Multiple Rows**

```sql
INSERT INTO logs (Message, LogLevel)
VALUES
    ('Database connection established.', 'INFO'),
    ('User authentication failed.', 'ERROR'),
    ('Scheduled backup completed.', 'INFO'),
    ('Low disk space warning.', 'WARNING');
```

#### **Using Default Timestamp**

If you want the `LoggedAt` column to use the default current timestamp:

```sql
INSERT INTO logs (Message, LogLevel)
VALUES ('System reboot initiated.', 'INFO');
```

---

### **3. Querying Inserted Data**

#### **Retrieve All Messages**

```sql
SELECT * FROM messages;
```

**Sample Output**:

| MessageID | Content                                  | Sender        | CreatedAt           | UpdatedAt           |
| --------- | ---------------------------------------- | ------------- | ------------------- | ------------------- |
| 1         | Hello, this is the first message.        | Alice Johnson | 2024-06-01 10:30:00 | 2024-06-01 10:30:00 |
| 2         | Meeting scheduled for tomorrow at 10 AM. | Bob Smith     | 2024-06-02 09:15:00 | 2024-06-02 09:15:00 |
| 3         | Project deadline extended to next week.  | Catherine Lee | 2024-06-02 11:45:00 | 2024-06-02 11:45:00 |

#### **Retrieve All Logs**

```sql
SELECT * FROM logs;
```

**Sample Output**:

| LogID | Message                           | LogLevel | LoggedAt            |
| ----- | --------------------------------- | -------- | ------------------- |
| 1     | Application started successfully. | INFO     | 2024-06-01 08:00:00 |
| 2     | User authentication failed.       | ERROR    | 2024-06-01 08:05:00 |
| 3     | Scheduled backup completed.       | INFO     | 2024-06-01 08:30:00 |

---

### **4. Filtering Data**

#### **Filter Messages by Sender**

```sql
SELECT * FROM messages WHERE Sender = 'Bob Smith';
```

#### **Filter Logs by Log Level**

```sql
SELECT * FROM logs WHERE LogLevel = 'ERROR';
```

---

### **Exercises**

#### **Exercise 1: Insert Data into `messages`**

Insert the following messages:

1. **Content**: "Deployment was successful.", **Sender**: "DevOps Team"
2. **Content**: "Please review the latest code changes.", **Sender**: "QA Team"

```sql
INSERT INTO messages (Content, Sender)
VALUES
    ('Deployment was successful.', 'DevOps Team'),
    ('Please review the latest code changes.', 'QA Team');
```

#### **Exercise 2: Insert Data into `logs`**

Insert the following logs:

1. **Message**: "Service restarted successfully.", **LogLevel**: "INFO"
2. **Message**: "Memory usage exceeded threshold.", **LogLevel**: "WARNING"

```sql
INSERT INTO logs (Message, LogLevel)
VALUES
    ('Service restarted successfully.', 'INFO'),
    ('Memory usage exceeded threshold.', 'WARNING');
```

#### **Exercise 3: Query Data**

1. Retrieve all messages sent by the **"QA Team"**.

   ```sql
   SELECT * FROM messages WHERE Sender = 'QA Team';
   ```

2. Retrieve all log entries with the log level **"WARNING"**.

   ```sql
   SELECT * FROM logs WHERE LogLevel = 'WARNING';
   ```

---

### **Summary**

- Use **`INSERT INTO`** to add data to tables.
- Insert **single** or **multiple rows** with a single statement.
- Use **default values** for timestamps like `CURRENT_TIMESTAMP`.
- Query and filter data using the `SELECT` statement.

Let me know if you need further explanations or more examples! 😊
