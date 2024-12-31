# Section 8 : Grouping & Aggregate Functions

## 144. Applying GROUP BY in Practice

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29257376#overview)

```sql
SELECT bookingDate, SUM(guests)
FROM Bookings
GROUP BY BookingDate
```
