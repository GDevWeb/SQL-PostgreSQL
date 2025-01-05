/* 
Step 3: Query Practice
 */

 --3.1.Retrieve all members who joined in the last year.
SELECT membername
FROM members
WHERE joindate <= CURRENT_DATE - INTERVAL '12 months';

--3.2.List all books in the "Sci-fi" category.
SELECT 
title,
author,
AvailableCopies
FROM books
WHERE category = 'Sci-fi';
