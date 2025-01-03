/* 
Lesson 156: Understanding Date/Time Functions
 */

--**Exercise**


  -- 1. Retrieve the year, month, and day for all members' dates of birth.
  SELECT 
  firstname || ' ' || lastname as full_name,
  EXTRACT(YEAR FROM DateOfBirth) AS year_of_birth,
  EXTRACT(MONTH FROM DateOfBirth) AS month_of_birth,
  EXTRACT(DAY FROM DateOfBirth) AS day_of_birth
  FROM members
  ORDER BY dateofbirth ASC;

--  2. Calculate the age of each member and display it alongside their full name.

  SELECT 
  firstname || ' ' || lastname as full_name,
  AGE(CURRENT_DATE, DateOfBirth) AS age
  FROM members;

--  3. Find all bookings made in the last 7 days.

SELECT *
FROM FacilitiesBooking
WHERE BookingDate >= CURRENT_DATE - INTERVAL '7 days'
ORDER BY BookingDate ASC;