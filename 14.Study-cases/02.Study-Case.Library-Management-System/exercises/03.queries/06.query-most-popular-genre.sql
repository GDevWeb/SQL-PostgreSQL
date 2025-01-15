/* Queries */

--Show the most popular genres (by the number of loans).

SELECT 
  b.Genre,
  COUNT(l.LoanID) AS NumberOfLoans
FROM 
  Loans l
JOIN 
  Books b ON l.BookID = b.BookID
GROUP BY 
  b.Genre
ORDER BY 
  NumberOfLoans DESC;
