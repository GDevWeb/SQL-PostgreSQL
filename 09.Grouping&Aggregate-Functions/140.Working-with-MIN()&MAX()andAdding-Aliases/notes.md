# Section 8 : Grouping & Aggregate Functions

## 140. Working with MIN() & MAX() and Adding Aliases to Aggregate Functions

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29223984#overview)

### MAX()

#### example

```sql
SELECT MAX(num_seats) FROM tables;
```

```sql
SELECT MAX(num_seats), MAX(amount_tipped) FROM bookings;
```

---

### MIN()

#### example

```sql
SELECT MIN(num_seats) FROM tables;
```

---

### ALIASES()

#### example

```sql
SELECT MAX(amount_billed) AS max_billed, MAX(amount_tipped) AS max_tipped FROM bookings;
```
