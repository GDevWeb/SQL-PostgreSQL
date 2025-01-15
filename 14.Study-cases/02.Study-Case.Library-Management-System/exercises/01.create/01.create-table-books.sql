CREATE TABLE IF NOT EXISTS Books(
  BookID SERIAL PRIMARY KEY,
  Title VARCHAR(100) NOT NULL,
  Author VARCHAR(100) NOT NULL,
  Genre INT NOT NULL,--keY related to the table Genres
  PublishedYear INT NOT NULL CHECK(PublishedYear > 0) NOT NULL,
  CopiesAvailable INT CHECK(CopiesAvailable > 0)
);

SELECT * FROM Books;