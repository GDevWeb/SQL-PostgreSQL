-- Use composite primary keys in the Enrollments table to manage many-to-many relationships.

CREATE TABLE IF NOT EXISTS Enrollments(
StudentID INT,
CourseID INT,
EnrollmentDate Date DEFAULT CURRENT_DATE,
PRIMARY KEY(StudentID, CourseID),
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

SELECT * FROM enrollments;

-- DROP TABLE IF EXISTS enrollments;