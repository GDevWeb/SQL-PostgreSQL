/* 157. Working with Weekdays */

--**Exercise**

-- 1. List all bookings grouped by weekday, showing the total number of bookings for each day.
SELECT EXTRACT(DOW FROM BookingDate) AS day_of_week, 
COUNT(*) AS total_booking
FROM FacilitiesBooking
GROUP BY EXTRACT(DOW FROM BookingDate)
ORDER BY total_booking DESC;

--2. Retrieve all bookings made on Fridays (day 5).
SELECT EXTRACT(DOW FROM BookingDate) AS day_of_week, 
COUNT(*) AS total_booking
FROM FacilitiesBooking
WHERE EXTRACT(DOW FROM BookingDate) = 5
GROUP BY EXTRACT(DOW FROM BookingDate)
ORDER BY total_booking DESC;

--3. Display each booking date alongside the weekday name.
SELECT BookingDate, TO_CHAR(BookingDate, 'Day') AS weekday_name
FROM FacilitiesBooking;