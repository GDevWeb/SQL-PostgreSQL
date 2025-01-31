CREATE TABLE IF NOT EXISTS Borrowers(
  borrower_id SERIAL PRIMARY KEY,
  borrower_name VARCHAR(100) NOT NULL,
  email VARCHAR(250) CHECK(email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') UNIQUE NOT NULL,
  phone VARCHAR(15) CHECK(LENGTH(phone) = 10) NOT NULL
);

INSERT INTO Borrowers(borrower_name, email,phone)
VALUES ('Christ Dam', 'chrisdam@fakemail.com', '0601000000');

SELECT * FROM Borrowers;
