CREATE TABLE IF NOT EXISTS Authors(
  author_id SERIAL PRIMARY KEY,
  author_name VARCHAR(100) NOT NULL
);

INSERT INTO Authors(author_name)
VALUES ('J.K Rowling');

SELECT * FROM Authors;
