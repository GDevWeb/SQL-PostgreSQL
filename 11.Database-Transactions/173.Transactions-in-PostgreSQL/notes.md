# Section 10 - Database Transactions

## **Lesson 173: Transactions in PostgreSQL**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29479520#overview)

---

### **Key Concepts Covered**

This lesson focuses on PostgreSQL-specific transaction handling and features.

---

### **Key PostgreSQL Commands**

1. **BEGIN and COMMIT**:

   - Starts and commits a transaction.

   ```sql
   BEGIN;
   -- Perform operations
   COMMIT;
   ```

2. **ROLLBACK**:

   - Rolls back all operations in the current transaction.

   ```sql
   ROLLBACK;
   ```

3. **SAVEPOINT**:

   - Creates a checkpoint within a transaction.

   ```sql
   SAVEPOINT savepoint_name;
   ```

4. **ROLLBACK TO SAVEPOINT**:

   - Rolls back to a specific savepoint.

   ```sql
   ROLLBACK TO savepoint_name;
   ```

5. **RELEASE SAVEPOINT**:

   - Removes a savepoint, making it unavailable for rollback.

   ```sql
   RELEASE SAVEPOINT savepoint_name;
   ```

6. **SET TRANSACTION**:
   - Configures transaction properties such as isolation level.
   ```sql
   SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
   ```

---

### **Exercise: Applying PostgreSQL Transactions**

1. **Create a Complex Transaction**  
   Perform a transaction involving multiple updates and a rollback.

   ```sql
   BEGIN;

   -- Insert a new member
   INSERT INTO Members (FirstName, LastName, Email)
   VALUES ('Anna', 'Taylor', 'anna.taylor@example.com');

   -- Create a savepoint
   SAVEPOINT after_insert;

   -- Update MembershipRecords for a non-existent record (simulate error)
   UPDATE MembershipRecords
   SET EndDate = '2024-12-31'
   WHERE MemberID = 999; -- This will fail

   -- Rollback to the savepoint
   ROLLBACK TO after_insert;

   -- Commit the transaction
   COMMIT;
   ```

2. **Use Isolation Levels**  
   Demonstrate setting a transaction isolation level.

   ```sql
   BEGIN;
   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

   -- Perform some operations
   INSERT INTO MembershipRecords (MemberID, MembershipID, StartDate, EndDate)
   VALUES (3, 1, '2024-01-01', '2024-12-31');

   COMMIT;
   ```

3. **Nested Transactions**  
   Simulate nested transactions using multiple savepoints.

   ```sql
   BEGIN;

   INSERT INTO Trainers (FirstName, LastName) VALUES ('Mark', 'Smith');
   SAVEPOINT first_savepoint;

   INSERT INTO Trainers (FirstName, LastName) VALUES ('Sarah', 'Johnson');
   SAVEPOINT second_savepoint;

   -- Rollback to the first savepoint
   ROLLBACK TO first_savepoint;

   -- Commit the remaining changes
   COMMIT;
   ```

---

### **Key Takeaways**

1. PostgreSQL offers rich transaction control with `SAVEPOINT`, `ROLLBACK`, and `RELEASE`.
2. Isolation levels allow for fine-tuning transaction behavior to prevent concurrency issues.
3. Proper use of transactions ensures data integrity, especially in complex workflows.

---

This concludes **Section 10: Database Transactions**! 🎉 Let me know if you'd like a summary or if you're ready to move on to the next section. 🚀
