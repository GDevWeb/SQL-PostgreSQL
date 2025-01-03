/* **Lesson 158: Calculating INTERVALS** */

--**Exercise**

--1. Calculate the remaining duration for all active memberships and display it alongside the member's full name.
SELECT
mr.endDate - CURRENT_DATE AS remaining_duration,
m.firstname || ' '|| m.lastname AS full_name
FROM Members AS m
INNER JOIN 
membershiprecords AS mr ON m.memberid = mr.memberid
WHERE mr.enddate > CURRENT_DATE;


-- --2. Update all memberships to extend their expiration by 2 weeks.
SELECT EndDate + INTERVAL '2 week' as delay_membership_expiration
FROM membershiprecords;

UPDATE membershiprecords
SET EndDate = EndDate + INTERVAL '2 weeks';


-- --3. Retrieve all bookings made in the last 30 days.
SELECT *
FROM facilitiesbooking
WHERE BookingDate BETWEEN CURRENT_DATE - INTERVAL '30 days' AND CURRENT_DATE
ORDER BY BookingDate DESC;
