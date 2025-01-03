/* 
155. Using String Functions with INSERT
 */

 /* 
 Exercise
Use the following requirements to insert data into the members table:

1.Insert a new member with:

  First name: "Robert"
  Last name: "Johnson"
  Email: "Robert.Johnson@Example.COM" (stored in lowercase)
  Full name automatically generated using concatenation.

 */

-- INSERT INTO members (firstname, lastname, full_name, gender, dateOfbirth, email, phonenumber, address)
-- VALUES
-- (
--     'Robert', 
--     'Johnson', 
--     TRIM('Robert' || ' ' || 'Johnson'), 
--     'Male', 
--     '2000-01-25', 
--     LOWER('Robert.Johnson@Example.COM'), 
--     '0600000000', 
--     '12 street of glory - Saint Row, NY - 0001 CP 000'
-- );


-- SELECT * FROM members;

/* 
2.Insert another member where:

  First name: "Emma"
  Last name: "Williams"
  Email: Format to lowercase before inserting.
  Full name stored in uppercase.

 */

-- INSERT INTO members (firstname, lastname, full_name, gender, dateOfbirth, email, phonenumber, address)
-- VALUES
-- (
--     'Emma', 
--     'Williams', 
--     UPPER(TRIM('Emma' || ' ' || 'Williams')), 
--     'Female', 
--     '2008-05-06', 
--     LOWER('EM.WIILIAMS@Example.COM'), 
--     '0601000000', 
--     '12 street of glory - Saint Row, NY - 0001 CP 000'
-- );

-- -- 3.Create a query that checks if the transformations were applied correctly.

SELECT * 
FROM members
WHERE full_name = 'EMMA WILLIAMS' 
  AND email = 'em.wiiliams@example.com';


-- Grade : A-
