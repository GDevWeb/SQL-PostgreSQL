/* 
Exercise 1: Create a students Table

--  */
-- CREATE TABLE IF NOT EXISTS students (
--   StudentID SERIAL PRIMARY KEY,
--   Email VARCHAR(150) UNIQUE NOT NULL,
--   EnrollmentDate DATE DEFAULT CURRENT_DATE
-- );

-- /* Exercise 2: Insert Data */
-- -- 2.1;Insert valid student data:
-- INSERT INTO students (email)
-- VALUES('jeteste@gmail.com');
-- -- 2.2;Insert duplicated data:
-- INSERT INTO students (email)
-- VALUES('jeteste@gmail.com');

-- SELECT * FROM students;
--❗
DROP TABLE IF EXISTS Students;