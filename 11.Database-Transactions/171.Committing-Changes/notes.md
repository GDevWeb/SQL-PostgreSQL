# Section 10 - Database Transactions

## chapter title

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29453012#overview)
- [mysql - statement that caus an implicit commit](https://dev.mysql.com/doc/refman/8.0/en/implicit-commit.html)

### Lesson 171: Committing Changes

---

#### **Key Concepts Covered**

This lesson focuses on the importance of committing changes in a transaction and how committing makes the changes permanent in the database.

---

### **Exercise: Practicing Commit**

1. **Start a Transaction**
   Perform multiple updates to the `MembershipRecords` table, but do not commit them immediately.

   ```sql
   BEGIN;

   -- Update the end date for a specific membership
   UPDATE MembershipRecords
   SET EndDate = '2024-06-30'
   WHERE MemberID = 1;

   -- Update the start date for another membership
   UPDATE MembershipRecords
   SET StartDate = '2024-02-01'
   WHERE MemberID = 2;
   ```

2. **Verify Changes Before Committing**  
   Use a `SELECT` statement to verify the changes made within the transaction.

   ```sql
   SELECT * FROM MembershipRecords WHERE MemberID IN (1, 2);
   ```

3. **Commit the Changes**  
   Finalize the transaction to save the changes permanently.

   ```sql
   COMMIT;
   ```

4. **Confirm the Commit**  
   Query the `MembershipRecords` table to confirm the changes were successfully committed.

   ```sql
   SELECT * FROM MembershipRecords WHERE MemberID IN (1, 2);
   ```

5. **Start Another Transaction Without Commit**  
   Perform another update but do not commit, then terminate the session or rollback to observe the behavior.

   ```sql
   BEGIN;

   -- Update another record
   UPDATE MembershipRecords
   SET EndDate = '2025-01-01'
   WHERE MemberID = 3;

   -- Rollback this transaction
   ROLLBACK;
   ```

6. **Check After ROLLBACK**  
   Query the table to confirm the changes were not saved after the rollback.

   ```sql
   SELECT * FROM MembershipRecords WHERE MemberID = 3;
   ```

---

### **Key Takeaways**

1. **Explicit COMMIT**:
   Changes in a transaction are not saved until explicitly committed.

2. **Data Integrity**:
   Committing ensures that only valid changes are written to the database.

3. **Rollback Safety**:
   You can undo changes within a transaction using `ROLLBACK` before committing.

---
