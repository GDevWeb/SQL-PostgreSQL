/* Queries */

-- 3.List overdue books (past due date but not returned).

SELECT 
b.title,
l.loan_date,
l.due_date,
l.return_date
FROM loans as l  
LEFT JOIN
books as b on l.book_id = b.book_id
WHERE l.return_date IS NULL 
AND 
(l.due_date < CURRENT_DATE);
