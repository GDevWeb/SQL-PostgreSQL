/* Queries */

-- 4.Find the most borrowed books

-- SELECT
-- Count(l.book_id) as totalBorrowed,
-- b.title 
-- FROM loans as l
-- LEFT JOIN 
-- books AS b on l.book_id = b.book_id
-- GROUP BY 
-- l.book_id,
-- b.title
-- ORDER BY l.book_id ASC
-- LIMIT 5;

-- CREATE or REPLACE VIEW most_borrowed_books AS
-- SELECT
-- Count(l.book_id) as totalBorrowed,
-- b.title 
-- FROM loans as l
-- LEFT JOIN 
-- books AS b on l.book_id = b.book_id
-- GROUP BY 
-- l.book_id,
-- b.title
-- ORDER BY l.book_id ASC
-- LIMIT 5;


-- corrected
CREATE OR REPLACE VIEW most_borrowed_books AS
SELECT
    b.title, 
    COUNT(l.book_id) AS total_borrowed
FROM loans AS l
LEFT JOIN books AS b ON l.book_id = b.book_id
GROUP BY b.title
ORDER BY total_borrowed DESC
LIMIT 5;

SELECT * FROM most_borrowed_books;