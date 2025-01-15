/* extras */

-- Use window functions to rank books by the number of loans.

SELECT 
  b.Title,
  b.Genre,
  COUNT(l.LoanID) AS NumberOfLoans,
  RANK() OVER(ORDER BY COUNT(l.LoanID)DESC) AS RANK
FROM 
  Loans l
JOIN 
  Books b ON l.BookID = b.BookID
GROUP BY 
  b.Title,
  b.Genre
ORDER BY 
  NumberOfLoans DESC;
