/* Queries */

-- 4.Retrieve borrower details who have overdue books.

SELECT
b.borrower_name,
b.email,
b.phone,
l.due_date as overdue_books
FROM 
borrowers as b
LEFT JOIN 
loans AS l 
ON 
b.borrower_id = l.borrower_id
WHERE l.due_date IS NOT NULL;

CREATE OR REPLACE VIEW borrower_have_overdue_books AS 
SELECT
    b.borrower_name,
    b.email,
    b.phone,
    l.due_date AS overdue_books
FROM borrowers AS b
LEFT JOIN loans AS l ON b.borrower_id = l.borrower_id
WHERE l.due_date < CURRENT_DATE AND l.return_date IS NULL;

SELECT * FROM borrower_have_overdue_books;