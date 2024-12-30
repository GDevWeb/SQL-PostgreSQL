-- Create tables for Students

CREATE TABLE IF NOT EXISTS Students(
  StudentID Serial Primary KEY,
  FirstName Varchar(50) NOT NULL,
  LastName Varchar(50) NOT NULL,
  BirthDate DATE NOT NULL
);

-- SELECT * FROM students;

-- DROP TABLE students;