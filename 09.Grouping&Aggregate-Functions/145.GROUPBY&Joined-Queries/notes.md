# Section 8 : Grouping & Aggregate Functions

## 145. GROUP BY & Joined Queries

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29257382#overview)

- examples

```sql
SELECT p.PaymentType, SUM(b.guests)
INNER JOIN bookings AS b ON p.id = b.PaymentMethodID
GROUP BY p.paymentMethod;
```

- enhanced example

```sql
SELECT p.name, b.bookingDate, SUM(b.guests), ROUND(AVG(tipped),2)
FROM  paymentMethod AS p
INNER JOIN bookings AS b ON p.id = b.PaymentMethodID
GROUP BY p.PaymentType, b.bookingDate;
```
