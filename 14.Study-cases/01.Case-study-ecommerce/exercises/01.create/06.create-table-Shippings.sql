CREATE TYPE type_shippingMethod AS ENUM('Shipping Home', 'Shipping Case', 'Shipping Relay');
CREATE TYPE type_shippingStatus AS ENUM('Preparation', 'In delivering', 'Delivered');

CREATE TABLE IF NOT EXISTS Shipping(
  ShippingID SERIAL PRIMARY KEY,
  OrderID INT NOT NULL,
  ShippingDate DATE NOT NULL,
  ShippingMethod type_shippingMethod NOT NULL DEFAULT 'Shipping Home',
  ShippingStatus type_shippingStatus NOT NULL DEFAULT 'Preparation',
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE
);

SELECT * FROM Shipping;