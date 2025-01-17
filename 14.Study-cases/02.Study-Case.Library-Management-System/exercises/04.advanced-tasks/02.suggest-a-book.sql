/* Extras */

--Write a query to suggest books for members based on the genres they’ve borrowed.

SELECT 
  m.FirstName,
  m.LastName,
  b.Title AS SuggestedBook,
  g.GenreName AS Genre
FROM 
  Loans l
JOIN 
  Books b ON l.BookID = b.BookID
JOIN 
  Genres g ON b.Genre = g.GenreID
JOIN 
  Members m ON l.MembersID = m.MembersID
WHERE 
  b.Genre IN (
    SELECT DISTINCT b2.Genre
    FROM Loans l2
    JOIN Books b2 ON l2.BookID = b2.BookID
    WHERE l2.MembersID = m.MembersID
  )
  AND b.BookID NOT IN (
    SELECT l3.BookID
    FROM Loans l3
    WHERE l3.MembersID = m.MembersID
  )
GROUP BY 
  m.FirstName, m.LastName, b.Title, g.GenreName
ORDER BY 
  m.FirstName, m.LastName, b.Title;
