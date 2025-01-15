/* Advanced Tasks */

-- Optional Advanced Tasks
-- ALTER TABLE Loans
-- ADD COLUMN OverDueDays DATE GENERATED ALWAYS AS (CURRENT_DATE - ReturnDate) STORED;

-- SELECT * FROM Loans;

/* 
1. PostgreSQL Limitation
In PostgreSQL, GENERATED ALWAYS columns cannot reference non-stable values like CURRENT_DATE. This is because CURRENT_DATE changes daily, and GENERATED ALWAYS columns are intended to store immutable values derived at the time of insertion or update.
 */

 CREATE OR REPLACE VIEW LoanWithOverDueDays AS
 SELECT
 LoanID,
 MembersID,
 BookID,
 LoanDate,
 ReturnDate,
 ReturnedOn,
 LateFee,
 CASE
 WHEN ReturnedOn is NULL AND CURRENT_DATE > ReturnDate THEN CURRENT_DATE - ReturnDate
 ELSE 0
 END AS OverDueDays
 FROM Loans;