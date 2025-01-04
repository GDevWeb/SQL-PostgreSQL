/* 
Lesson 160: Understanding LIKE & Pattern Matching

### **Exercise**

 */

--1. Retrieve all members whose first names contain the letter "e".

SELECT 
firstName, 
lastName
FROM Members
WHERE firstName ILIKE '%e%';

--2. Find bookings where the `booking_date` starts with "2024-01".
SELECT 
BookingDate
FROM FacilitiesBooking
WHERE BookingDate::text LIKE '2024-01-__'; --i have to cast in string because it's a DATE

--3. List all email addresses ending with ".com".
SELECT
firstName,
lastName,
email
FROM Members
-- WHERE email Like '%example.com'; --in this case there is less result
WHERE email Like '%@%.com'; --in this case there is less result

