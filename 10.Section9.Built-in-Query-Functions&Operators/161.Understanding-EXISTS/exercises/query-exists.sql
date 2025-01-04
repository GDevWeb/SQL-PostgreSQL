/* 
Lesson 161: Understanding EXISTS
 */

-- **Exercise**

--1. Find members who have checked into the gym at least once.
SELECT
m.firstName,
m.lastName
FROM
Members m 
WHERE EXISTS(
  SELECT 1
  FROM GymCheckIn gci
  WHERE m.MemberID = gci.MemberID
);

--2. Retrieve all trainers who are assigned to at least one member.
SELECT
t.FirstName,
t.LastName
FROM 
Trainers t
WHERE EXISTS(
  SELECT 1
  FROM TrainerMember tm
  WHERE t.TrainerID = tm.TrainerID
  );

-- --3. List all facilities with bookings made in 2024.
SELECT
m.firstName,
m.lastName
FROM members m
WHERE EXISTS (
  SELECT 1
  FROM facilitiesbooking fb
  WHERE m.memberid = fb.memberid
  AND fb.bookingdate::text LIKE '%2024%' 
);

/* 

Grade A-
 */