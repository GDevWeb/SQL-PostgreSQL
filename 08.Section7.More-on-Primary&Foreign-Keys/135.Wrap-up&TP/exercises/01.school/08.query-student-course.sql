-- Retrieve a student's courses.

SELECT 
students.firstname ||''|| students.lastname as "sfn",
students.firstname as "student first Name",
students.lastname as "student last Name",
courses.coursename,
courses.teacher,
courses.classroom
FROM
students
LEFT JOIN
enrollments on students.studentid = enrollments.studentid
LEFT JOIN
courses on enrollments.courseid = courses.courseid
WHERE 
students.lastname = 'Fonzy';
