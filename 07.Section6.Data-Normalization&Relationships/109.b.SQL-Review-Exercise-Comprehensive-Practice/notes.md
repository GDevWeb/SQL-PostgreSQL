# **SQL Review Exercise: Comprehensive Practice**

## **Scenario: Online Library System**

You are building a database for an online library that tracks:

1. Members (users of the library).
2. Books (available to borrow).
3. Borrowing Records (who borrowed which book and when).

---

### **Step 1: Table Creation**

1. **Members Table**:

   - Columns: `MemberID` (Primary Key), `MemberName`, `JoinDate`.

2. **Books Table**:

   - Columns: `BookID` (Primary Key), `Title`, `Author`, `Category`, `AvailableCopies`.

3. **BorrowingRecords Table**:
   - Columns: `RecordID` (Primary Key), `MemberID` (Foreign Key), `BookID` (Foreign Key), `BorrowDate`, `ReturnDate`.

---

#### **Step 2: Insert Sample Data**

- Insert at least 5 members into the `Members` table.
- Add 5 books into the `Books` table, ensuring some have multiple copies available.
- Create borrowing records to track at least 3 books borrowed by different members.

---

#### **Step 3: Query Practice**

1. **Basic Queries**:

   - Retrieve all members who joined in the last year.
   - List all books in the "Fiction" category.

2. **Joins**:

   - Use an **INNER JOIN** to find the names of members and the titles of books they’ve borrowed.
   - Use a **LEFT JOIN** to list all members, including those who haven’t borrowed any books.

3. **Filters**:

   - Find all books that are currently unavailable (i.e., no available copies).
   - Retrieve all borrowing records where the return date is NULL (currently borrowed books).

4. **Calculated Fields**:
   - Calculate the total number of books borrowed by each member.
   - Show the borrowing duration (days) for each record.

---

#### **Step 4: Challenge Exercise**

1. **Add Foreign Key Constraints**:

   - Use `ON DELETE CASCADE` to remove borrowing records if a member or book is deleted.

2. **Advanced Query**:

   - List members who borrowed more than 2 books in the past month.

3. **Create a View**:
   - Define a view to show:
     - Member names.
     - Titles of books they’ve borrowed.
     - Borrowing duration.

---

#### **Step 5: Reflection**

- Write down the challenges you encountered.
- Test queries to confirm data integrity and proper relationships.

---

### **Let’s Get Started**

You can begin by creating the tables and inserting data. Let me know if you want help drafting the table structure or SQL statements to kick things off! 😊
