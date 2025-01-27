CREATE TABLE IF NOT EXISTS Suppliers(
  supplier_id SERIAL PRIMARY KEY,
  supplier_name VARCHAR(250) NOT NULL,
  contact_email VARCHAR(250) CHECK(contact_email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') UNIQUE NOT NULL,
  phone VARCHAR(15) CHECK(LENGTH(phone) = 10) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- INSERT INTO Suppliers(supplier_name, contact_email, phone)
-- VALUES
-- ('gros bill', 'grosbillsupply-france@mail.com', '0301020304');

SELECT * FROM Suppliers;