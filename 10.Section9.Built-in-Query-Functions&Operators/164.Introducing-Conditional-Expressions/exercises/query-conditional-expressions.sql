/*  **Lesson 164: Introducing Conditional Expressions** */

 
--**Exercise**


  --1. Create a query to flag members as either `Active` or `Inactive` based on their membership status.
 SELECT
 m.lastname,
 m.firstname,
 mr.memberId,
 mr.enddate,
 CASE
 WHEN 
 enddate >= CURRENT_DATE THEN 'INACTIVE'
 ELSE 'ACTIVE'
 END AS membership_status
 FROM membershiprecords mr
 INNER JOIN
 members AS m ON mr.memberId = m.memberId;

 --  2. Categorize bookings into `Morning`, `Afternoon`, or `Evening` slots based on the booking time.
SELECT
m.lastname,
m.firstname,
fb.memberid,
fb.bookingDate,
CASE
WHEN
EXTRACT(HOUR FROM fb.starttime) < 12 THEN 'Morning'
WHEN
EXTRACT(HOUR FROM fb.starttime) < 18 THEN 'Afternoon'
ELSE
'Evening'
END AS booking_time
FROM
facilitiesbooking fb
INNER JOIN
members AS m ON fb.memberId = m.memberid;



--  3. Use `CASE` to display membership types as `Standard`, `Premium`, or `Elite` based on a custom mapping of their IDs.

SELECT
m.lastname,
m.firstname,
mt.membershipId,
mt.membershipname,
CASE
WHEN mt.membershipname = 'Basic' THEN 'Standard'
WHEN mt.membershipname = 'Family' THEN 'Premium'
ELSE 'Elite'
END AS membership_status
FROM
membershiptypes mt
INNER JOIN
members AS m ON mt.membershipId = m.memberid;


