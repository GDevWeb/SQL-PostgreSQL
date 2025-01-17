CREATE TABLE IF NOT EXISTS Employee_Jobs(
  employee_id INT NOT NULL,
  job_title_id INT NOT NULL,
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
  FOREIGN KEY (job_title_id) REFERENCES Job_Titles(job_title_id)
);

SELECT * FROM Employee_Jobs;