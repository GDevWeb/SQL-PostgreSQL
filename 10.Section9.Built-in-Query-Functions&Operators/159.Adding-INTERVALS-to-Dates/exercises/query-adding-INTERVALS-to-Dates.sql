/* Lesson 159: Adding INTERVALS to Dates */

-- **Exercise**


-- --1. Add 1 year to the membership end date for all members and display the updated dates.
SELECT 
MembershipID, 
EndDate + INTERVAL '1 year' as free_one_year
FROM MembershipRecords;

UPDATE MembershipRecords
SET EndDate = EndDate + INTERVAL '1 year';



-- --2. Find members whose memberships will expire within 90 days.
SELECT MembershipID, EndDate
FROM MembershipRecords
WHERE EndDate > CURRENT_DATE AND EndDate <= CURRENT_DATE + INTERVAL '90 days';

--3. Schedule a maintenance event for the gym exactly 1 month from today.

CREATE TABLE IF NOT EXISTS EVENTS(
  EventID SERIAL PRIMARY KEY,
  EventName VARCHAR(250) NOT NULL DEFAULT 'no event',
  EventDate Date
);

SELECT * FROM Events

INSERT INTO Events(eventName, EventDate)
VALUES('Maintenance event', CURRENT_DATE + INTERVAL '1 month');
SELECT * FROM events;

/* 
Suggested Improvement:

If this is a recurring task, consider adding a Recurring column to the table to specify the frequency (e.g., monthly, yearly).
 */
 
ALTER TABLE Events
ADD COLUMN Recurring VARCHAR(50) DEFAULT 'One-time';
