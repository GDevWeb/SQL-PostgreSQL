/* 
  Step 3: Query Practice

  4.Calculated Fields:
*/

/* 
  3.4.1.Calculate the total number of books borrowed by each member. 
*/
SELECT
members.memberName,
COUNT(borrowingRecords.bookId) AS TotalBooksBorrowed
FROM
members
LEFT JOIN borrowingrecords on members.memberid = borrowingrecords.memberid
GROUP BY
members.memberid, members.membername
ORDER BY 
TotalBooksBorrowed ASC;

/* 3.4.2.Show the borrowing duration (days) for each record. */

SELECT
members.memberName,
books.title,
BorrowingRecords.BorrowDate,
BorrowingRecords.returnDate,
COALESCE((BorrowingRecords.ReturnDate - BorrowingRecords.BorrowDate)::INTEGER,0) AS BorrowingDuration 
FROM 
borrowingrecords
LEFT JOIN members ON members.memberid = borrowingrecords.bookid
LEFT JOIN books ON books.bookid = borrowingrecords.bookid;
