# Section 9: Built-in Query Functions & Operators

## **Lesson 162: Working with Subquery Expressions and EXISTS**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29469420#overview)

---

### **Overview**

This lesson expands on subqueries and the `EXISTS` operator. You’ll learn to:

1. Use subqueries for advanced filtering and data manipulation.
2. Combine `EXISTS` with complex subquery expressions.
3. Understand correlated vs. uncorrelated subqueries.

---

### **Key Concepts**

#### 1. **Subqueries in Filtering**

Subqueries can be used in the `WHERE` or `HAVING` clause to filter rows based on results from another query.

- Example: Find members who checked into the gym at least once.
  ```sql
  SELECT firstname, lastname
  FROM members
  WHERE memberid IN (
      SELECT DISTINCT memberid
      FROM gymcheckin
  );
  ```

---

#### 2. **Correlated Subqueries**

- A correlated subquery refers to columns in the outer query. It is evaluated once for each row in the outer query.
- Example: Find members whose check-in count exceeds 5.
  ```sql
  SELECT firstname, lastname
  FROM members m
  WHERE EXISTS (
      SELECT 1
      FROM gymcheckin g
      WHERE g.memberid = m.memberid
      HAVING COUNT(*) > 5
  );
  ```

---

#### 3. **Uncorrelated Subqueries**

- An uncorrelated subquery does not depend on the outer query and is executed only once.
- Example: Find members who have checked into the most popular facility.
  ```sql
  SELECT firstname, lastname
  FROM members
  WHERE memberid IN (
      SELECT memberid
      FROM gymcheckin
      WHERE facilityid = (
          SELECT facilityid
          FROM gymcheckin
          GROUP BY facilityid
          ORDER BY COUNT(*) DESC
          LIMIT 1
      )
  );
  ```

---

#### 4. **Using `EXISTS` with Subqueries**

- `EXISTS` is particularly useful for correlated subqueries.
- Example: Find facilities that have bookings in 2024.
  ```sql
  SELECT facilityname
  FROM facilities f
  WHERE EXISTS (
      SELECT 1
      FROM facilitiesbooking fb
      WHERE f.facilityid = fb.facilityid
      AND EXTRACT(YEAR FROM fb.bookingdate) = 2024
  );
  ```

---

### **Practical Examples**

#### **1. Members with Membership Expiring Soon**

Retrieve all members whose memberships expire within 30 days.

```sql
SELECT firstname, lastname
FROM members
WHERE EXISTS (
    SELECT 1
    FROM membershiprecords mr
    WHERE mr.memberid = members.memberid
      AND mr.enddate <= CURRENT_DATE + INTERVAL '30 days'
);
```

#### **2. Trainers Without Any Assigned Members**

Find trainers who are not assigned to any members.

```sql
SELECT firstname, lastname
FROM trainers t
WHERE NOT EXISTS (
    SELECT 1
    FROM trainermember tm
    WHERE t.trainerid = tm.trainerid
);
```

#### **3. Members Who Booked Facilities on the Same Day**

List all members who booked a facility on the same day as another booking.

```sql
SELECT DISTINCT m.firstname, m.lastname
FROM members m
WHERE EXISTS (
    SELECT 1
    FROM facilitiesbooking fb1, facilitiesbooking fb2
    WHERE fb1.memberid = m.memberid
      AND fb1.bookingdate = fb2.bookingdate
      AND fb1.facilityid <> fb2.facilityid
);
```

---

### **Exercise**

1. Retrieve all members who have memberships expiring in the next 60 days and have checked into the gym at least once.
2. Find all facilities that were booked at least twice on the same day.
3. List trainers who have assigned members but have not conducted any training sessions.

---

Let me know if you’re ready to dive into these exercises or need assistance! 😊
