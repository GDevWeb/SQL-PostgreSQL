# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **48. Working with Time Zones in PostgreSQL**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29071884#overview)

---

### **Overview**

In PostgreSQL, handling time zones correctly is crucial when working with date and time data. PostgreSQL provides several data types and functions to manage time zones effectively, ensuring that date-time data is stored and retrieved accurately across different locations.

---

### **Time Zone-Related Data Types**

1. **`TIMESTAMP`**:

   - Stores date and time **without time zone information**.
   - Represents the date-time exactly as entered.

2. **`TIMESTAMP WITH TIME ZONE`** (`TIMESTAMPTZ`):
   - Stores date and time **with time zone information**.
   - Internally stores the time in **UTC** and automatically converts it to the local time zone when queried.

---

### **Creating Tables with Time Zone-Aware Columns**

#### **Example Table**

```sql
CREATE TABLE events (
    EventID SERIAL PRIMARY KEY,
    EventName VARCHAR(100) NOT NULL,
    EventTime TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
```

- **`EventTime TIMESTAMP WITH TIME ZONE`**: Stores the event time with time zone awareness.
- **`DEFAULT CURRENT_TIMESTAMP`**: Inserts the current timestamp in the session’s time zone by default.

---

### **Inserting Data with Time Zones**

When inserting a timestamp with a specified time zone, PostgreSQL converts it to UTC internally.

#### **Insert an Event with a Specific Time Zone**

```sql
INSERT INTO events (EventName, EventTime)
VALUES ('Project Launch', '2024-06-10 16:00:00 CEST');
```

- **CEST (Central European Summer Time)** is **UTC+2**.
- PostgreSQL stores the time internally as **`2024-06-10 14:00:00 UTC`**.

---

### **Querying Data with Time Zones**

When querying `TIMESTAMP WITH TIME ZONE`, PostgreSQL returns the time in your session's time zone.

#### **Example Query**

```sql
SELECT EventID, EventName, EventTime FROM events;
```

**Output (Assuming Session Time Zone is UTC):**

| EventID | EventName      | EventTime              |
| ------- | -------------- | ---------------------- |
| 1       | Project Launch | 2024-06-10 14:00:00+00 |

---

### **Setting the Time Zone for a Session**

You can set the time zone for your current session using the `SET TIME ZONE` command.

#### **Set Time Zone to `CEST`**

```sql
SET TIME ZONE 'Europe/Paris';
```

#### **Check Current Time Zone**

```sql
SHOW TIME ZONE;
```

**Output:**

```
Europe/Paris
```

#### **Query After Changing Time Zone**

```sql
SELECT EventID, EventName, EventTime FROM events;
```

**Output (in CEST):**

| EventID | EventName      | EventTime              |
| ------- | -------------- | ---------------------- |
| 1       | Project Launch | 2024-06-10 16:00:00+02 |

---

### **Converting Time Zones**

You can convert timestamps between different time zones using the `AT TIME ZONE` operator.

#### **Example Conversion**

Convert the event time to `America/New_York` time zone.

```sql
SELECT
    EventName,
    EventTime AT TIME ZONE 'America/New_York' AS EventTimeInNY
FROM events;
```

**Output:**

| EventName      | EventTimeInNY          |
| -------------- | ---------------------- |
| Project Launch | 2024-06-10 10:00:00-04 |

---

### **Best Practices for Handling Time Zones**

1. **Store Times in UTC**:

   - Use `TIMESTAMP WITH TIME ZONE` to store times in UTC by default.
   - This avoids ambiguity and ensures consistency across different locations.

2. **Set Session Time Zones**:

   - Set the appropriate time zone for your session when displaying times to users.

   ```sql
   SET TIME ZONE 'UTC';
   ```

3. **Convert Times When Needed**:

   - Use `AT TIME ZONE` to display times in the desired time zone.

4. **Be Consistent**:
   - Decide on a standard approach for handling time zones in your application (e.g., always store in UTC).

---

### **Exercises**

#### **Exercise 1: Create an `appointments` Table**

Create an `appointments` table with the following columns:

- `AppointmentID` (Auto-increment primary key)
- `Description` (`VARCHAR(100)`, not null)
- `AppointmentTime` (`TIMESTAMP WITH TIME ZONE`)

```sql
CREATE TABLE appointments (
    AppointmentID SERIAL PRIMARY KEY,
    Description VARCHAR(100) NOT NULL,
    AppointmentTime TIMESTAMP WITH TIME ZONE
);
```

#### **Exercise 2: Insert Data with Different Time Zones**

Insert the following appointments:

1. **Description**: "Doctor Visit", **AppointmentTime**: "2024-06-15 14:00:00 EST"
2. **Description**: "Team Meeting", **AppointmentTime**: "2024-06-16 09:00:00 CEST"

```sql
INSERT INTO appointments (Description, AppointmentTime)
VALUES
    ('Doctor Visit', '2024-06-15 14:00:00 EST'),
    ('Team Meeting', '2024-06-16 09:00:00 CEST');
```

#### **Exercise 3: Query and Convert Time Zones**

1. Retrieve all appointments.

   ```sql
   SELECT * FROM appointments;
   ```

2. Convert appointment times to `UTC` and `America/Los_Angeles`.

   ```sql
   SELECT
       AppointmentID,
       Description,
       AppointmentTime,
       AppointmentTime AT TIME ZONE 'UTC' AS AppointmentInUTC,
       AppointmentTime AT TIME ZONE 'America/Los_Angeles' AS AppointmentInLA
   FROM appointments;
   ```

---

### **Summary**

- **`TIMESTAMP WITH TIME ZONE`** stores date-time values with time zone awareness and converts them to UTC internally.
- Use **`SET TIME ZONE`** to change the session's time zone for displaying times.
- Use **`AT TIME ZONE`** to convert timestamps to different time zones.
- Storing times in **UTC** ensures consistency and avoids ambiguity when working with multiple time zones.

Let me know if you need more examples or further explanations! 😊
