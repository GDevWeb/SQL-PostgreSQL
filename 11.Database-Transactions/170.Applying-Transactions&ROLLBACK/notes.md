# Section 10 - Database Transactions

## **Lesson 170: Applying Transactions & ROLLBACK**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29453008#overview)
- [github - repo - statement to add customer](https://github.com/academind/sql-complete-guide-code/blob/10-database-transactions/sql/create-project/03-add-additional-customer.sql)

---

### **Key Concepts**:

1. **Understanding ROLLBACK**:

   - Allows you to undo all changes made during a transaction.
   - Useful for maintaining data consistency in case of errors or exceptions.

2. **Common Use Cases**:

   - Ensuring that either all or none of the operations within a transaction are applied.
   - Handling invalid data or unexpected errors.

3. **Basic Workflow**:
   - Use `BEGIN` to start a transaction.
   - Perform one or more operations.
   - Use `ROLLBACK` to undo all changes if something goes wrong.

---

#### **Exercise**:

1. **Scenario**:

   - Insert two new members into the `members` table.
   - Simulate an error in the second operation.
   - Rollback the transaction and verify that no changes were made.

2. **Steps**:

   ```sql
   -- Start the transaction
   BEGIN;

   -- Insert first member
   INSERT INTO members (firstname, lastname, email)
   VALUES ('Alice', 'Brown', 'alice.brown@example.com');

   -- Simulate an error (e.g., duplicate email for the second member)
   INSERT INTO members (firstname, lastname, email)
   VALUES ('Bob', 'Smith', 'alice.brown@example.com');

   -- Rollback the transaction
   ROLLBACK;

   -- Verify no records were added
   SELECT * FROM members WHERE firstname IN ('Alice', 'Bob');
   ```

3. **Expected Outcome**:
   - Both operations should be undone, and no new records should exist for "Alice" or "Bob."

---

### Lesson 170: Applying Transactions & ROLLBACK

---

#### **Key Concepts Covered**

This lesson focuses on how to use transactions in SQL, demonstrating how to group multiple operations together and undo them if necessary with `ROLLBACK`.

---

### **Exercise: Transactions & ROLLBACK**

1. **Start a Transaction**  
   Insert a new membership into the `MembershipRecords` table and a corresponding check-in record into the `GymCheckIn` table, but don't commit the changes yet.

   ```sql
   BEGIN; -- Start transaction

   -- Insert a membership record
   INSERT INTO MembershipRecords (MemberID, MembershipID, StartDate, EndDate)
   VALUES (1, 2, '2024-01-01', '2024-12-31');

   -- Insert a corresponding gym check-in
   INSERT INTO GymCheckIn (MemberID, CheckInTime)
   VALUES (1, '2024-01-15 08:00:00');
   ```

2. **Verify Changes (Before Committing)**  
   Query both tables to check if the changes were applied.

   ```sql
   SELECT * FROM MembershipRecords;
   SELECT * FROM GymCheckIn;
   ```

3. **Simulate an Error and ROLLBACK**  
   Simulate a scenario where the transaction fails (e.g., a constraint violation), and use `ROLLBACK` to undo all the changes.

   ```sql
   -- Simulating an error: Inserting a duplicate MembershipID (violates primary key constraint)
   INSERT INTO MembershipRecords (MemberID, MembershipID, StartDate, EndDate)
   VALUES (1, 2, '2024-01-01', '2024-12-31'); -- This should fail

   -- Rollback the transaction
   ROLLBACK;
   ```

4. **Check Results After ROLLBACK**  
   Query both tables again to confirm that no changes were saved.

   ```sql
   SELECT * FROM MembershipRecords;
   SELECT * FROM GymCheckIn;
   ```

5. **Redo with COMMIT**  
   Now repeat the original transaction and commit it successfully.

   ```sql
   BEGIN;

   -- Insert a membership record
   INSERT INTO MembershipRecords (MemberID, MembershipID, StartDate, EndDate)
   VALUES (1, 2, '2024-01-01', '2024-12-31');

   -- Insert a corresponding gym check-in
   INSERT INTO GymCheckIn (MemberID, CheckInTime)
   VALUES (1, '2024-01-15 08:00:00');

   -- Commit the transaction
   COMMIT;
   ```

---

### **Key Takeaways**

1. **Transactions Group Operations**:
   Transactions allow you to group multiple SQL commands into a single unit.

2. **ROLLBACK for Error Handling**:
   If an error occurs during the transaction, you can roll back the changes, ensuring data integrity.

3. **COMMIT for Finalizing**:
   Only committed transactions are permanently saved to the database.

---
