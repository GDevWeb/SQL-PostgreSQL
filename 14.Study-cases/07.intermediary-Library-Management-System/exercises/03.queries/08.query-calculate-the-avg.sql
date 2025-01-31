/* Queries */

--8.Calculate the average loan duration for returned books.

SELECT
round(AVG( return_date - due_date), 0) AS avg_loan_duration
FROM loans
WHERE return_date IS NOT NULL;