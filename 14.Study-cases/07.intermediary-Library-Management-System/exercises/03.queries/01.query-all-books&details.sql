/* Queries */

-- 1.Retrieve all books with their authors and publication years.



SELECT 
b.title as Title,
a.author_name as Author,
b.publication_year as ReleasedYear
FROM bookauthors as ba
LEFT JOIN 
books AS b ON ba.book_id = b.book_id
LEFT JOIN
authors as a ON ba.author_id = a.author_id;


CREATE OR REPLACE VIEW retrieve_all_books AS
SELECT 
b.title as Title,
a.author_name as Author,
b.publication_year as ReleasedYear
FROM bookauthors as ba
LEFT JOIN 
books AS b ON ba.book_id = b.book_id
LEFT JOIN
authors as a ON ba.author_id = a.author_id;

SELECT * FROM retrieve_all_books;