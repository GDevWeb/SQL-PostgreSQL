CREATE TABLE IF NOT EXISTS Bookings(
  booking_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,--foreign key users.user_id
  event_id INT NOT NULL,--foreign key events.event_id
  tickets INT NOT NULL, --number of tickets booked
  booking_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (event_id) REFERENCES events(event_id)
  ); 


CREATE OR REPLACE VIEW BookingDetails AS 
SELECT
b.booking_id,
b.user_id,
b.event_id,
b.tickets,
e.price,
b.tickets*e.price AS total_cost,
b.booking_time
FROM
Bookings AS b
JOIN
Events e ON b.event_id = e.event_id;


  -- INSERT INTO Bookings(user_id, event_id, tickets, booking_time)
  -- VALUES
  -- (1,1,4, '2025-01-11'),
  -- (2,2,2, '2025-01-15');

  SELECT * FROM Bookings;
  SELECT * FROM bookingDetails;
