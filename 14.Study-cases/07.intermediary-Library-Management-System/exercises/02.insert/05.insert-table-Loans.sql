INSERT INTO Loans (borrower_id, book_id, loan_date, return_date) VALUES
(1, 2, '2024-01-10', '2024-01-22'),
(2, 3, '2024-02-05', NULL),
(3, 5, '2023-11-12', '2023-11-30'),
(4, 7, '2023-12-03', '2023-12-15'),
(5, 9, '2023-10-22', NULL),
(6, 11, '2023-09-18', '2023-09-30'),
(7, 13, '2023-08-25', NULL),
(8, 1, '2024-01-01', '2024-01-14'),
(9, 4, '2023-07-10', '2023-07-22'),
(10, 6, '2023-06-14', '2023-06-26'),
(3, 10, '2024-02-01', NULL),
(4, 12, '2023-05-05', '2023-05-18'),
(5, 14, '2023-04-20', '2023-05-02'),
(6, 15, '2023-03-10', NULL),
(7, 8, '2023-02-25', '2023-03-09'),
(8, 5, '2023-01-15', '2023-01-27'),
(9, 2, '2022-12-12', '2022-12-24'),
(10, 7, '2022-11-18', NULL),
(1, 11, '2022-10-25', '2022-11-06'),
(2, 13, '2022-09-10', '2022-09-22');

SELECT * FROM loans;