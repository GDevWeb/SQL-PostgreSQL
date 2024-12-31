# Section 8 : Grouping & Aggregate Functions

## 147. Applying HAVING in Practice

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29287584#overview)

- examples

```sql
--  3.  Total number of guests for a specific date.
SELECT SUM(guests) AS totalGuests, bookingDate
from bookings
GROUP BY bookingDate
HAVING bookingDate = '2024-12-25';
```
