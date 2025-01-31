CREATE TABLE BookAuthors(
  book_id INT NOT NULL, --references Books.book_id,
  author_id INT NOT NULL, --references Authors.author_id,
  FOREIGN KEY (book_id) REFERENCES Books(book_id),
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);


INSERT INTO BookAuthors(book_id, author_id)
VALUES(1,1);

SELECT * FROM BookAuthors;