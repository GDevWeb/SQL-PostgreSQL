/* 
  Step 3: Query Practice
    3.3.Filters:
 */

/* 
  3.3.1Find all books that are currently unavailable (i.e., no available copies).
 */

SELECT 
title
FROM
books
WHERE
AvailableCopies = 0; --The catcher in the Rye 0

/* 
  3.4.Retrieve all borrowing records where the return date is NULL (currently borrowed books). 
*/

SELECT
Members.memberName,
Books.title,
BorrowingRecords.borrowDate,
BorrowingRecords.returnDate
FROM
BorrowingRecords
INNER JOIN members ON members.memberid = borrowingrecords.memberid
INNER JOIN books ON borrowingrecords.bookid = books.bookid
WHERE returnDate IS NULL;
