/* 
  Step 4: Challenge Exercise
 */

 /* 
 4.1.Add Foreign Key Constraints:
  Use ON DELETE CASCADE to remove borrowing records if a member or book is deleted.
  */

  --I done ...

/* 
  4.2.Advanced Query: 
    List members who borrowed more than 2 books in the past month.
*/
SELECT
    members.membername,
    COUNT(borrowingrecords.bookid) AS TotalBooksBorrowed
FROM
    members
LEFT JOIN
    borrowingrecords ON members.memberid = borrowingrecords.memberid
GROUP BY
    members.memberid, members.membername
HAVING
    COUNT(borrowingrecords.bookid) > 2;

/* 
  4.3.Create a View:

  Define a view to show:
    Member names.
    Titles of books they’ve borrowed.
    Borrowing duration.
 */

 CREATE VIEW IF NOT EXISTS borrow AS
 SELECT
  members.memberName,
  books.title,
  BorrowingRecords.BorrowDate,
  BorrowingRecords.returnDate,
  COALESCE((BorrowingRecords.ReturnDate - BorrowingRecords.BorrowDate)::INTEGER,0) AS BorrowingDuration 
  FROM borrowingrecords
  JOIN
  members ON borrowingrecords.memberid = members.memberid
  JOIN
  books ON borrowingrecords.bookid = books.bookid;

