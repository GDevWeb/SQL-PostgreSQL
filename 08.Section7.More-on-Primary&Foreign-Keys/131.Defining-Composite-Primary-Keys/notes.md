# Section 7 : More on Primary & Foreign keys

## 131. Defining Composite Primary Keys (Composite Keys In Action)

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28918734#overview)

### example

```sql
CREATE TABLE projects_employees(
  employee_id INT REFERENCES employees ON DELETE CASCADE,
  project_id INT REFERENCES projects ON DELETE CASCADE,
  PRIMARY KEY (employee_id, project_id)
)
```

#### notes

`ON DELETE CASCADE` allow to delete all related elements
`PRIMARY KEY (employee_id, project_id)` is simply built from `employee_id` and `project_id`
