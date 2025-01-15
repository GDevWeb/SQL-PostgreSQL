/* Queries */

--List members who have borrowed a book by a specific author (e.g., "J.R.R Tolkien").
SELECT 
DISTINCT m.FirstName,
m.LastName,
b.BookID,
b.Title,
b.Author,
l.BookID
FROM
Loans l  
INNER JOIN 
Members m ON m.MembersID = l.MembersID
INNER JOIN
Books b ON b.BookID = l.BookID
WHERE 
b.Author = 'J.R.R. Tolkien';