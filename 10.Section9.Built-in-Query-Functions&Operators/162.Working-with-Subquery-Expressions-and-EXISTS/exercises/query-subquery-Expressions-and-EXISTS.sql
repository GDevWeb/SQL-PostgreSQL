/* **Lesson 162: Working with Subquery Expressions and EXISTS** */

/* 
### **Exercise**


 */

--  1. Retrieve all members who have memberships expiring in the next 60 days and have checked into the gym at least once.
SELECT firstname, lastname
FROM members
WHERE EXISTS (
    SELECT 1
    FROM membershiprecords mr
    WHERE mr.memberid = members.memberid
      AND mr.enddate <= CURRENT_DATE + INTERVAL '60 days'
);

--  2. Find all facilities that were booked at least twice on the same day.

SELECT DISTINCT m.firstname, m.lastname
FROM members m
WHERE EXISTS (
    SELECT 1
    FROM FacilitiesBooking fb1, FacilitiesBooking fb2
    WHERE fb1.memberid = m.memberid
      AND fb1.bookingdate = fb2.bookingdate
      AND fb1.facilityid <> fb2.facilityid
);

--   3. List trainers who have assigned members but have not conducted any training sessions.
