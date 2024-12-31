CREATE TABLE IF NOT EXISTS Bookings(
  BookingsID SERIAL PRIMARY KEY,
  BookingDate DATE NOT NULL,
  Guests INT CHECK(Guests >= 1) NOT NULL,
  Billed NUMERIC(6,2) CHECK(Billed >= 9.99) NOT NULL, --facturé
  Tipped NUMERIC(6,2) CHECK(Tipped >= 9.99) NOT NULL, --pourboire
  PaymentMethodID INT,
  TableID INT,
  FOREIGN KEY (PaymentMethodID) REFERENCES PaymentMethod(PaymentMethodID),
  FOREIGN KEY (TableID) REFERENCES Tables(TableID)
);

SELECT * FROM Bookings;