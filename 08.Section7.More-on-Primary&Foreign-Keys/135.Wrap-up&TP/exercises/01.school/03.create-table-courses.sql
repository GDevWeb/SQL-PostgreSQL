-- Create tables for Courses
CREATE TABLE IF NOT EXISTS COURSES(
  CourseID SERIAL PRIMARY KEY,
  CourseName VARCHAR(100) NOT NULL,
  Teacher VARCHAR(100) NOT NULL,
  ClassRoom VARCHAR(100) NOT NULL
);

SELECT * FROM courses;