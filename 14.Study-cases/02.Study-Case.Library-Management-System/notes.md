Great to hear about your progress and your A- grade! 😊 For this morning's session, I’ll design a focused study case based on real-world scenarios to help you consolidate your SQL skills while keeping it engaging.

---

### **Study Case: Library Management System**

---

#### **Scenario**

You are tasked with designing and querying a database for a public library. The system will manage books, members, loans, and late fees. Your task is to:

1. Create the database schema.
2. Insert sample data.
3. Query the data to answer common business questions.

---

### **Database Schema**

#### **Tables & Relationships**

1. **Books Table**:

   - Stores details about books available in the library.
   - **Columns**: `BookID`, `Title`, `Author`, `Genre`, `PublishedYear`, `CopiesAvailable`.

2. **Members Table**:

   - Stores information about library members.
   - **Columns**: `MemberID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Address`.

3. **Loans Table**:

   - Tracks which member has borrowed which book.
   - **Columns**: `LoanID`, `MemberID (FK)`, `BookID (FK)`, `LoanDate`, `ReturnDate`, `ReturnedOn`, `LateFee`.

4. **Genres Table**:
   - Lists possible genres for books.
   - **Columns**: `GenreID`, `GenreName`.

---

### **Tasks**

#### **1. Create the Schema**

- Design and create the database schema following the above relationships.
- Use constraints like `FOREIGN KEY`, `CHECK`, `NOT NULL`, and `DEFAULT` where applicable.

#### **2. Insert Sample Data**

- Add realistic data for:
  - 5 books (mix of genres, publication years, and available copies).
  - 5 members.
  - 10 loans (some returned, some overdue).

#### **3. Practice Queries**

Answer the following questions:

1. List all books currently available in the library (where `CopiesAvailable > 0`).
2. Find all overdue loans (where `ReturnDate < CURRENT_DATE` and `ReturnedOn IS NULL`).
3. Calculate the total late fees owed by each member.
4. List members who have borrowed a book by a specific author (e.g., "J.K. Rowling").
5. Show the most popular genres (by the number of loans).

---

### **Optional Advanced Tasks**

1. Add a computed column to the `Loans` table to calculate the number of overdue days (`CURRENT_DATE - ReturnDate`).
2. Use window functions to rank books by the number of loans.
3. Write a query to suggest books for members based on the genres they’ve borrowed.

---

Let me know if you’d like me to provide detailed instructions for any step or if you'd prefer to tackle it independently!
