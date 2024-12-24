# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## 📚 **96. Data Normalization - First Steps**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877004#overview)

---

#### **Goal of the Module**

This module introduces the concept of **data normalization**—the process of organizing a database to reduce redundancy and improve data integrity. You'll learn the foundational steps of normalization and how to apply them.

---

### 🛠️ **Key Points**

1. **What Is Data Normalization?**

   - It’s the process of structuring a database to:
     - Eliminate redundancy.
     - Improve data consistency.
     - Ensure that data dependencies are logical.

2. **Benefits of Normalization**

   - **Reduced Redundancy**: Avoid storing duplicate data.
   - **Improved Data Integrity**: Changes to data are automatically reflected where needed.
   - **Easier Maintenance**: Smaller, focused tables are easier to manage.

3. **Normalization Rules (Forms)**

   - **First Normal Form (1NF)**:
     - Ensure each column has atomic (indivisible) values.
     - Eliminate duplicate rows.
   - **Second Normal Form (2NF)**:
     - Ensure all non-key columns depend on the entire primary key.
   - **Third Normal Form (3NF)**:
     - Ensure all non-key columns depend only on the primary key, not on other non-key columns.

4. **Breaking Down Data**
   - Start with one big table.
   - Identify repeating data.
   - Split the table into smaller tables with meaningful relationships.

---

### 🧩 **Exercise: First Steps in Normalization**

#### **Scenario**

You are managing a database for a music streaming service. Initially, all data is stored in one table called `Tracks`. The table includes:

| **TrackID** | **TrackName** | **ArtistName** | **AlbumName**          | **Genre** | **ReleaseYear** |
| ----------- | ------------- | -------------- | ---------------------- | --------- | --------------- |
| 1           | "Imagine"     | "John Lennon"  | "Imagine"              | "Rock"    | 1971            |
| 2           | "Hey Jude"    | "The Beatles"  | "Single"               | "Rock"    | 1968            |
| 3           | "Halo"        | "Beyoncé"      | "I Am... Sasha Fierce" | "Pop"     | 2008            |

---

#### **Tasks**

1. **Analyze the Data**:

   - Identify data that repeats across rows.
   - Highlight possible redundancy.

2. **Split the Data**:

   - Propose how to split this table into smaller, normalized tables.
   - Define the primary key for each table.

3. **Describe Relationships**:
   - Write down the relationships between the new tables.
   - Explain how foreign keys can connect the tables.

---

### **Expected Output**

1. **New Tables**:

   - `Tracks Table`: Stores track-specific details.
   - `Artists Table`: Stores unique artist information.
   - `Albums Table`: Stores unique album information.

2. **Relationships**:
   - Each `Track` is associated with an `Artist` (**One-to-Many**).
   - Each `Track` is part of an `Album` (**One-to-Many**).

```sql
-- Artists Table
CREATE TABLE Artists (
    ArtistID SERIAL PRIMARY KEY,
    ArtistName VARCHAR(100) NOT NULL
);

-- Albums Table
CREATE TABLE Albums (
    AlbumID SERIAL PRIMARY KEY,
    AlbumName VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    ReleaseYear INT CHECK (ReleaseYear > 1900 AND ReleaseYear <= EXTRACT(YEAR FROM CURRENT_DATE))
);

-- Tracks Table
CREATE TABLE Tracks (
    TrackID SERIAL PRIMARY KEY,
    TrackName VARCHAR(100) NOT NULL,
    ArtistID INT REFERENCES Artists(ArtistID),
    AlbumID INT REFERENCES Albums(AlbumID)
);
```

---

Once you've attempted this exercise, let me know so we can move to **Module 97: Splitting Data Into Tables**! 😊
