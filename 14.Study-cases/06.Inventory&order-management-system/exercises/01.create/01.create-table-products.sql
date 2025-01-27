-- CREATE type category_product as ENUM ('accessories', 'graphic card', 'headphone', 'keyboard','laptop', 'mouse', 'screen', 'other'); 

CREATE TABLE IF NOT EXISTS Products(
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(50) NOT NULL,
  category category_product NOT NULL DEFAULT 'other',
  price DECIMAL(10,2) CHECK(price >  0.99) NOT NULL,
  stock_quantity INT CHECK(stock_quantity >=0) NOT NULL,
  CONSTRAINT unique_product_name UNIQUE (product_name)
);

INSERT INTO Products(product_name, category, price, stock_quantity)
VALUES 
('Razer keyboard 900 rgb', 'keyboard', 99.99, 45);

SELECT * FROM Products;

