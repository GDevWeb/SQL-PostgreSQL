/* Queries */

--Find all overdue loans (where ReturnDate < CURRENT_DATE and ReturnedOn IS NULL).

SELECT 
*
FROM
Loans
WHERE
ReturnDate < CURRENT_DATE AND ReturnedOn IS NULL;