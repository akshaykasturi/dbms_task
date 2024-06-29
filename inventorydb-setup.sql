
CREATE DATABASE IF NOT EXISTS inventoryDB;


USE inventoryDB;


CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price DECIMAL(10, 2),
  quantity INT,
  category VARCHAR(255)
);


INSERT INTO products (name, description, price, quantity, category) VALUES
('Laptop', 'A high-performance laptop', 1200.00, 50, 'Electronics'),
('Smartphone', 'A latest model smartphone', 800.00, 100, 'Electronics'),
('Desk Chair', 'An ergonomic desk chair', 150.00, 200, 'Furniture');


INSERT INTO products (name, description, price, quantity, category) VALUES
('Bluetooth Speaker', 'A portable Bluetooth speaker', 100.00, 75, 'Electronics'),
('Monitor', 'A 24-inch HD monitor', 200.00, 30, 'Electronics');


SELECT * FROM products;


SELECT * FROM products WHERE price < 500.00;


SELECT * FROM products WHERE quantity > 50;


SET SQL_SAFE_UPDATES = 0;

UPDATE products 
SET price = 250.00 
WHERE name = 'Mouse';


DELETE FROM products 
WHERE name = 'Headphones';


SET SQL_SAFE_UPDATES = 1;
