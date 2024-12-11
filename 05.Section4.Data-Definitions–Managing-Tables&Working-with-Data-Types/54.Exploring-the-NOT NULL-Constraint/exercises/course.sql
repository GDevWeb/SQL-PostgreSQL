-- Exercise 4: Add NOT NULL to an Existing Column
-- 1.Create a courses table:
-- CREATE TABLE  IF NOT EXISTS courses (
--   CourseID SERIAL PRIMARY KEY,
--   CourseName VARCHAR(100),
--   Instructor VARCHAR(100)
-- );

-- 2.Insert some data with NULL values:
-- INSERT INTO courses (CourseName) VALUES ('Math 101');

-- 3.Update NULL values in the Instructor column:
-- UPDATE courses
-- SET Instructor = 'M.Legales'
-- where Instructor IS NULL;

-- 4.Add the NOT NULL constraint:
-- SELECT * FROM courses;

Drop TABLE courses;