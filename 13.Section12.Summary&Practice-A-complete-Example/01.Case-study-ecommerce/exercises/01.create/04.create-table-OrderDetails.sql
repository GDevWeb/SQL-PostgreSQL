CREATE TABLE IF NOT EXISTS OrderDetails(
  OrderDetailID SERIAL PRIMARY KEY,
  OrderID INT NOT NULL, --fk
  ProductID INT NOT NULL, --fk
  Quantity INT CHECK(Quantity > 0)  NOT NULL,
  TotalPrice DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE,
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID) ON DELETE CASCADE
);  

SELECT * FROM OrderDetails;


/* 
TIPS - but i don't consider an eventual discount or promotion

TotalPrice DECIMAL(10,2) GENERATED ALWAYS AS (
  Quantity * (SELECT Price FROM Products WHERE Products.ProductID = OrderDetails.ProductID)
) STORED
 */