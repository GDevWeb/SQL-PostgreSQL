# Section 7 : More on Primary & Foreign keys

## 132. Composite Foreign Keys

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28918744#overview)

### example

```sql
CREATE TABLE projects_employees(
  employee_id INT,
  project_id INT REFERENCES projects ON DELETE CASCADE,
  PRIMARY KEY (employee_id, project_id),
  FOREIGN KEY employee_id REFERENCES employees ON DELETE CASCADE,
  --FOREIGN KEY (employee_id, project_id) REFERENCES employees ON DELETE ...
)
```

### notes

The `...` in the last line of your SQL snippet suggests that the statement is incomplete. It is typically used in documentation, pseudocode, or examples to indicate that there is more to be filled in or that the actual code continues but is not shown.

### Explanation in Context:

In your case, the line:

```sql
--FOREIGN KEY (employee_id, project_id) REFERENCES employees ON DELETE ...
```

could be intended to show an incomplete or hypothetical foreign key constraint. It might mean that the author is suggesting or demonstrating that this part could be completed by specifying the appropriate action to take upon deletion of the referenced record in the `employees` table.

### Common Actions for `ON DELETE`:

When defining foreign keys, the `ON DELETE` clause specifies what should happen to the dependent rows if the referenced row in the parent table is deleted. Common actions include:

- **CASCADE**: Deletes the dependent rows automatically.
- **SET NULL**: Sets the foreign key column(s) in the dependent rows to `NULL`.
- **SET DEFAULT**: Sets the foreign key column(s) to a default value.
- **NO ACTION**: Prevents deletion if dependent rows exist (default behavior in most systems).
- **RESTRICT**: Similar to `NO ACTION` but checked immediately.

### Possible Completion:

The complete line might look like this:

```sql
FOREIGN KEY (employee_id, project_id) REFERENCES employees ON DELETE CASCADE
```

or another appropriate action like `SET NULL`, depending on the desired behavior.
