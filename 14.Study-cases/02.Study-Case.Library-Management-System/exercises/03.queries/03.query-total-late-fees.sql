/* Queries */

--Calculate the total late fees owed by each member.

--I ever handle this directly int the table at the column lateFee

SELECT 
l.MembersID,
m.FirstName,
m.LastName,
l.LateFee
FROM loans l
INNER JOIN 
members as m ON m.MembersID = l.MembersID
WHERE lateFee IS NOT NULL;