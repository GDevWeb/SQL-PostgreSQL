/* Queries */

--List all books currently available in the library (where CopiesAvailable > 0).

SELECT 
*
FROM Books
WHERE CopiesAvailable > 0;