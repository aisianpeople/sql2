CREATE TABLE users(
	user_id SERIAL PRIMARY KEY, 
  name VARCHAR(50), 
  email VARCHAR(50)
);

CREATE TABLE products(
	product_id SERIAL PRIMARY KEY, 
  name VARCHAR(50), 
  price FLOAT
);

CREATE TABLE cart(
	cart_id SERIAL PRIMARY KEY, 
  user_id INT REFERENCES users(user_id), 
  product_id INT REFERENCES products(product_id),
  amount INT
);

INSERT INTO users (name, email)
VALUES ('Scott', 's@gmail.com'),
('Steven', 's@yahoo.com'),
('Andrew', 'a@hotmail.com');

INSERT INTO products (name, price)
VALUES ('Lamp', 19.99),
('Bed', 200.99),
('Table', 199.99),
('Chairs', 69.99),
('Desk', 599.99);

INSERT INTO cart (user_id, product_id, amount)
VALUES (1, 1, 2),
(1, 2, 1),
(2, 2, 1),
(2, 3, 1),
(3, 4, 4),
(3, 5, 1);

SELECT * FROM products
WHERE product_id IN (
	SELECT product_id FROM cart
  WHERE user_id = 1
);

SELECT products.*, users.* FROM cart
JOIN users
	ON users.user_id = cart.user_id
JOIN products
	ON products.product_id = cart.product_id;

SELECT SUM(products.price * amount) FROM cart
JOIN products
ON products.product_id = cart.product_id
WHERE user_id = 1;

UPDATE cart SET amount = 2 WHERE cart_id = 4;

SELECT * FROM cart;