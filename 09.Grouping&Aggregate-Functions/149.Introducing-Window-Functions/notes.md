# Section 8 : Grouping & Aggregate Functions

## 149. Introducing Window Functions

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29287590#overview)

### Definition

Window functions are powerful tools that allow you to perform calculations across a set of table rows related to the current row. These functions are distinct from traditional aggregate functions because they do not collapse rows into a single output row; instead, they retain the separate identities of each row while allowing calculations to be performed over a defined “window” of rows.

- examples

```sql
SELECT BookingDate, tipped, SUM(tipped) OVER()
FROM Bookings;
```

```sql
SELECT BookingDate, tipped, SUM(tipped) OVER(PARTITION BY BookingDate)
FROM bookings;
```
