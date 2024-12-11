-- Exercise 1: Create a students Table

-- CREATE TABLE IF NOT EXISTS students(
--   StudentID SERIAL PRIMARY KEY,
--   FullName VARCHAR(100) NOT NULL,
--   Email VARCHAR(150) NOT NULL,
--   EnrollmentDate DATE DEFAULT CURRENT_DATE
-- );

-- Exercise 2: Insert Valid Data
-- INSERT INTO  students (FullName, Email, EnrollmentDate)
-- VALUEs ('john Doe', 'helloworl@gmail.com', '2024-05-06');

-- Exercise 3: Attempt to Insert Invalid Data
-- INSERT INTO  students (FullName)
-- VALUES ('jane Doeson', 'jane_doeson@gmail.com', '2024-05-06');
--INSERT a plus d'expressions que les colonnes cibles

-- SELECT * FROM students;

DROP TABLE students;