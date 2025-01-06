# Section 10 - Database Transactions

## **172: Working with Savepoints**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29479514#overview)

---

### **Key Concepts Covered**

This lesson introduces the use of `SAVEPOINTS` to set checkpoints within a transaction. Savepoints allow rolling back to a specific point without undoing the entire transaction.

---

### **Exercise: Using Savepoints in Transactions**

1. **Start a Transaction**  
   Begin a transaction and perform some updates on the `GymCheckIn` table.

   ```sql
   BEGIN;

   -- Update CheckInTime for a specific record
   UPDATE GymCheckIn
   SET CheckInTime = '10:30:00'
   WHERE MemberID = 1;
   ```

2. **Create a Savepoint**  
   Set a savepoint after the first update.

   ```sql
   SAVEPOINT after_first_update;
   ```

3. **Perform Another Update**  
   Make a second update to a different record in the same table.

   ```sql
   UPDATE GymCheckIn
   SET CheckInTime = '09:00:00'
   WHERE MemberID = 2;
   ```

4. **Create Another Savepoint**  
   Set a second savepoint after the second update.

   ```sql
   SAVEPOINT after_second_update;
   ```

5. **Roll Back to the First Savepoint**  
   Undo changes made after the first savepoint but keep changes before it.

   ```sql
   ROLLBACK TO after_first_update;
   ```

6. **Verify Changes After Rollback**  
   Query the table to confirm only the first update remains.

   ```sql
   SELECT * FROM GymCheckIn WHERE MemberID IN (1, 2);
   ```

7. **Perform Another Update After Rollback**  
   Add another update and commit the transaction.

   ```sql
   UPDATE GymCheckIn
   SET CheckInTime = '11:00:00'
   WHERE MemberID = 3;

   COMMIT;
   ```

8. **Confirm the Final State**  
   Query the table to verify all committed changes.

   ```sql
   SELECT * FROM GymCheckIn;
   ```

---

### **Key Takeaways**

1. **Granular Control**: Savepoints allow precise control over rolling back specific parts of a transaction.
2. **Safety Net**: Savepoints help in scenarios where multiple changes are being tested, ensuring that earlier changes are preserved.
3. **Rollback Flexibility**: You can rollback to specific savepoints without affecting earlier changes.

---
