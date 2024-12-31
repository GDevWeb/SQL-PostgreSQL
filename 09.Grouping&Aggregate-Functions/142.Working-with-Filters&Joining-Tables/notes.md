# Section 8 : Grouping & Aggregate Functions

## 142. Working with Filters & Joining Tables

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29224428#overview)

## Filter

- examples

```sql
SELECT ROUND(AVG(tipped), 2)
FROM Bookings
WHERE billed > 9;
```

```sql
SELECT ROUND(AVG(tipped), 2)
FROM Bookings
WHERE billed > 9 AND guests >= 2;
```

## JOIN

- examples

```sql
SELECT MAX(b.guests), MAX(seats)
FROM bookings AS b
INNER JOIN tables AS t ON b.tableID = t.id;
```

```sql
SELECT MAX(b.guests), MAX(seats)
FROM bookings AS b
INNER JOIN tables AS t ON b.tableID = t.id
INNER JOIN paymentMethod AS p ON b.paymentID = p.id
WHERE t.seats < 5 AND p.PaymentType = 'cash';
```

## 📌 Post-it

- INNER JOIN : combine rows from two or more tables where there is a match based on a common column. Often the ID
