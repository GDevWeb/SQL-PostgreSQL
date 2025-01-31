/* Queries */

-- 2.Find all books currently on loan (not returned yet).

SELECT 
b.title,
l.loan_date,
l.due_date,
l.return_date
FROM loans as l  
LEFT JOIN
books as b on l.book_id = b.book_id
WHERE return_date IS NULL;

CREATE OR REPLACE VIEW books_not_yet_returned AS
SELECT 
b.title,
l.loan_date,
l.due_date,
l.return_date
FROM loans as l  
LEFT JOIN
books as b on l.book_id = b.book_id
WHERE return_date IS NULL;

SELECT * FROM books_not_yet_returned;