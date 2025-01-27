-- CREATE TRIGGER trg_calculate_subtotal
-- BEFORE INSERT OR UPDATE ON OrderDetails
-- FOR EACH ROW
-- EXECUTE FUNCTION calculate_subtotal();

-- DROP TRIGGER trg_calculate_subtotal;

CREATE TABLE IF NOT EXISTS OrderDetails(
  order_detail_id SERIAL PRIMARY KEY,
  order_id INT NOT NULL, --foreign key Orders.order_id
  product_id INT NOT NULL, --foreign key Products.product_id
  quantity INT NOT NULL CHECK(quantity > 0),
  -- subtotal GENERATED ALWAYS AS (quantity * (SELECT price FROM Products WHERE Products.product_id = OrderDetails.product_id)) STORED,
  subtotal DECIMAL,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id), 
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


-- -- INSERT INTO OrderDetails(order_id, product_id, quantity)
-- -- VALUES
-- -- (1,1, 2);

-- SELECT * FROM OrderDetails;

-- CREATE OR REPLACE VIEW OrderDetailsView AS
-- SELECT
--   od.order_detail_id,
--   od.order_id,
--   od.product_id,
--   od.quantity,
--   od.quantity * p.price AS subtotal
-- FROM OrderDetails od
-- JOIN Products p ON od.product_id = p.product_id;

-- SELECT * FROM OrderDetailsView;