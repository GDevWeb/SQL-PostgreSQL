/* Queries */

-- 7.Find borrowers who have borrowed more than three books.

SELECT
bor.borrower_name, 
COUNT(l.borrower_id) as total_borrowed
FROM loans as l
LEFT JOIN 
borrowers as bor 
ON l.borrower_id = bor.borrower_id
GROUP BY
bor.borrower_name,
l.borrower_id
HAVING COUNT(l.borrower_id) >= 3;

CREATE or REPLACE VIEW borrowers_more_3_books AS
SELECT
bor.borrower_name, 
COUNT(l.borrower_id) as total_borrowed
FROM loans as l
LEFT JOIN 
borrowers as bor 
ON l.borrower_id = bor.borrower_id
GROUP BY
bor.borrower_name,
l.borrower_id
HAVING COUNT(l.borrower_id) >= 3;

SELECT * FROM borrowers_more_3_books;