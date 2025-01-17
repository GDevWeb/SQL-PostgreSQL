CREATE TABLE IF NOT EXISTS Employees(
  employee_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(250) CHECK(Email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') UNIQUE NOT NULL,
  phone VARCHAR(15) CHECK(LENGTH(phone) = 10),
  hire_date DATE NOT NULL,
  salary INT NOT NULL,
  department_id INT NOT NULL, --foreign key Departments
  FOREIGN KEY (department_id) REFERENCES Departments(department_id) ON DELETE CASCADE
);
SELECT * FROM Employees;