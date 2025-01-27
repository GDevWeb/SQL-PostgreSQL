CREATE OR REPLACE FUNCTION calculate_subtotal()
RETURNS TRIGGER AS $$
BEGIN
  -- Set the subtotal based on the product price
  NEW.subtotal := NEW.quantity * (SELECT price FROM Products WHERE product_id = NEW.product_id);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- DROP FUNCTION calculate_subtotal()
