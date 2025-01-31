/* Queries */

-- 5.Count the total number of books written by each author.

SELECT
a.author_name,
COUNT(ba.book_id) AS total_books
FROM 
bookauthors AS ba
LEFT JOIN 
books AS b ON ba.book_id = b.book_id
LEFT JOIN
authors AS a ON ba.author_id = a.author_id
GROUP BY a.author_id, a.author_name
HAVING
Count(ba.book_id) > 0;

CREATE OR REPLACE VIEW total_book_by_author AS
SELECT
    a.author_name,
    COUNT(ba.book_id) AS total_books
FROM bookauthors AS ba
LEFT JOIN authors AS a ON ba.author_id = a.author_id
GROUP BY a.author_id, a.author_name;

SELECT * FROM total_book_by_author;