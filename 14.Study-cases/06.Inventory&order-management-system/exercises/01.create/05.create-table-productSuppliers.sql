CREATE TABLE IF NOT EXISTS ProductSuppliers(
  product_supplier_id SERIAL PRIMARY KEY,
  product_id INT NOT NULL, --foreign key Products.product_id
  supplier_id INT NOT NULL, --foreign key Suppliers.supplier_id
  FOREIGN KEY (product_id) REFERENCES Products(product_id),
  FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id),
  CONSTRAINT unique_product_supplier UNIQUE (product_id, supplier_id)
);

-- INSERT INTO ProductSuppliers(product_id, supplier_id)
-- VALUES
-- (1,1);

SELECT * FROM ProductSuppliers;