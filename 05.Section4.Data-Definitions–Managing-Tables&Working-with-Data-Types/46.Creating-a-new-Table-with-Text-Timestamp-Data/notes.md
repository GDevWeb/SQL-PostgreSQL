# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **46. Creating a New Table with Text & Timestamp Data in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614036#overview)

---

### **Overview**

In PostgreSQL, the **`TEXT`** data type is used for storing variable-length strings, while the **`TIMESTAMP`** data type is used to store date and time information. These types are commonly combined in tables for tracking events, logging activity, or storing descriptive data with timestamps.

This lesson will demonstrate how to create a table that uses both `TEXT` and `TIMESTAMP` data types.

---

### **1. Table Design**

Let’s create a table called **`messages`** to store text messages with timestamps. The table will include:

- **`MessageID`**: A unique identifier for each message.
- **`Content`**: The actual text of the message.
- **`Sender`**: The name of the message sender.
- **`CreatedAt`**: A timestamp indicating when the message was created.
- **`UpdatedAt`**: A timestamp for tracking when the message was last updated.

---

### **2. Creating the Table**

```sql
CREATE TABLE messages (
    MessageID SERIAL PRIMARY KEY,
    Content TEXT NOT NULL,
    Sender VARCHAR(100) NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### **Explanation**:

1. **`MessageID SERIAL PRIMARY KEY`**:

   - Auto-incrementing identifier for each message.

2. **`Content TEXT NOT NULL`**:

   - Text column for the message content. It cannot be `NULL`.

3. **`Sender VARCHAR(100) NOT NULL`**:

   - Name of the sender, limited to 100 characters.

4. **`CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP`**:

   - Automatically stores the timestamp when the row is created.

5. **`UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP`**:
   - Automatically stores the timestamp when the row is created, and can be updated later.

---

### **3. Inserting Data**

#### **Insert a Single Row**

```sql
INSERT INTO messages (Content, Sender)
VALUES ('Hello, this is a test message.', 'Alice Johnson');
```

- The `CreatedAt` and `UpdatedAt` columns will automatically use the current timestamp.

#### **Insert Multiple Rows**

```sql
INSERT INTO messages (Content, Sender)
VALUES
    ('This is the second message.', 'Bob Smith'),
    ('Another message for testing.', 'Catherine Lee');
```

---

### **4. Querying the Data**

#### **Retrieve All Messages**

```sql
SELECT * FROM messages;
```

**Example Output**:

| MessageID | Content                        | Sender        | CreatedAt           | UpdatedAt           |
| --------- | ------------------------------ | ------------- | ------------------- | ------------------- |
| 1         | Hello, this is a test message. | Alice Johnson | 2024-06-01 10:30:00 | 2024-06-01 10:30:00 |
| 2         | This is the second message.    | Bob Smith     | 2024-06-01 11:00:00 | 2024-06-01 11:00:00 |
| 3         | Another message for testing.   | Catherine Lee | 2024-06-01 11:15:00 | 2024-06-01 11:15:00 |

---

### **5. Updating Timestamps**

You can update the `UpdatedAt` column to track modifications.

#### **Update Example**

```sql
UPDATE messages
SET Content = 'Updated message content.', UpdatedAt = CURRENT_TIMESTAMP
WHERE MessageID = 1;
```

---

### **6. Filtering Data**

#### **Messages from a Specific Sender**

```sql
SELECT * FROM messages
WHERE Sender = 'Bob Smith';
```

#### **Messages Created After a Certain Time**

```sql
SELECT * FROM messages
WHERE CreatedAt > '2024-06-01 11:00:00';
```

---

### **7. Advanced Example: Sorting and Formatting**

#### **Sort Messages by Creation Time**

```sql
SELECT * FROM messages
ORDER BY CreatedAt DESC;
```

#### **Format Timestamps**

You can format timestamps using the `TO_CHAR` function.

```sql
SELECT
    MessageID,
    Content,
    TO_CHAR(CreatedAt, 'YYYY-MM-DD HH24:MI:SS') AS CreatedAtFormatted
FROM messages;
```

**Example Output**:

| MessageID | Content                        | CreatedAtFormatted  |
| --------- | ------------------------------ | ------------------- |
| 1         | Hello, this is a test message. | 2024-06-01 10:30:00 |
| 2         | This is the second message.    | 2024-06-01 11:00:00 |
| 3         | Another message for testing.   | 2024-06-01 11:15:00 |

---

### **Exercises**

#### **Exercise 1: Create a `logs` Table**

1. Create a table called `logs` with the following columns:

   - `LogID` (Auto-increment primary key)
   - `Message` (`TEXT`, cannot be null)
   - `LogLevel` (`VARCHAR(50)`, cannot be null, e.g., "INFO", "ERROR")
   - `LoggedAt` (`TIMESTAMP`, default to the current timestamp)

   ```sql
   CREATE TABLE logs (
       LogID SERIAL PRIMARY KEY,
       Message TEXT NOT NULL,
       LogLevel VARCHAR(50) NOT NULL,
       LoggedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   );
   ```

#### **Exercise 2: Insert Data into `logs`**

Insert the following log messages:

1. **Message**: "System started.", **LogLevel**: "INFO"
2. **Message**: "Database connection failed.", **LogLevel**: "ERROR"

```sql
INSERT INTO logs (Message, LogLevel)
VALUES
    ('System started.', 'INFO'),
    ('Database connection failed.', 'ERROR');
```

#### **Exercise 3: Query the `logs` Table**

Retrieve all log messages where the `LogLevel` is "ERROR."

```sql
SELECT * FROM logs WHERE LogLevel = 'ERROR';
```

---

### **Summary**

- **Text Columns**: Use `TEXT` for variable-length strings and `VARCHAR` for strings with a defined maximum length.
- **Timestamp Columns**: Use `TIMESTAMP` for storing date and time information. Use `DEFAULT CURRENT_TIMESTAMP` to auto-fill with the current time.
- **Tracking Updates**: Combine `CreatedAt` and `UpdatedAt` for tracking row creation and modification times.

Let me know if you need further examples or clarification! 😊
