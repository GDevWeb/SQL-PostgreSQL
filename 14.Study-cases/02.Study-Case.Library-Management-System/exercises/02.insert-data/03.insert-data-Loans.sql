INSERT INTO Loans (MembersID, BookID, LoanDate, ReturnedOn, LateFee)
VALUES
-- (1, 1, '2024-01-01', '2024-01-29', 0.00), -- Alice borrowed 'The Silent Patient'
-- (2, 3, '2024-01-05', NULL, 5.00), -- Bob borrowed 'Dune', not returned yet
-- (3, 2, '2024-01-10', '2024-02-01', 0.00), -- Charlie borrowed 'Pride and Prejudice'
-- (4, 4, '2024-01-12', NULL, 15.00), -- Diana borrowed 'The Hobbit', overdue
-- (5, 5, '2024-01-15', '2024-02-10', 0.00); -- Eve borrowed 'Becoming'
(1, 5, '2024-01-15', '2024-02-10', 0.00); -- Eve borrowed 'Becoming'

SELECT * FROM loans;