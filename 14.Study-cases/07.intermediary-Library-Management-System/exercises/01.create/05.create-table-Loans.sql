CREATE TABLE IF NOT EXISTS Loans(
  loan_id SERIAL PRIMARY KEY,
  borrower_id INT NOT NULL, --foreign key Borrowers(borrower_id)
  book_id INT NOT NULL, --foreign key Books(book_id)
  loan_date DATE NOT NULL DEFAULT CURRENT_DATE,
  due_date DATE NOT NULL GENERATED ALWAYS AS (loan_date + INTERVAL '30 days') STORED,
  return_date DATE DEFAULT NULL, -- NULL if the book is not returned  FOREIGN KEY (borrower_id) REFERENCES Borrowers(borrower_id),
  FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

INSERT INTO Loans(borrower_id, book_id, loan_date)
VALUES
(1, 1, '2025-01-22');

SELECT * FROM Loans;
