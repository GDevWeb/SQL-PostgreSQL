/* 
    Step 3: Query Practice
    2.joins
*/

/* 
  2.1.Use an INNER JOIN to find the names of members and the titles of books they’ve borrowed.
 */

SELECT 
    Members.MemberName,
    Books.Title
FROM 
    BorrowingRecords
INNER JOIN Members ON BorrowingRecords.MemberID = Members.MemberID
INNER JOIN Books ON BorrowingRecords.BookID = Books.BookID
WHERE 
    BorrowingRecords.BorrowDate IS NOT NULL;

/* 
  2.2.Use a LEFT JOIN to list all members, including those who haven’t borrowed any books.
 */

 SELECT 
 Members.MemberName,
 Books.title
 FROM 
 Members 
 LEFT JOIN 
 borrowingrecords on members.memberID = borrowingrecords.memberid
 LEFT JOIN 
 books on borrowingrecords.bookid = books.bookid; 