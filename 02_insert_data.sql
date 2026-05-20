INSERT INTO clients (name, email, password, address)
VALUES
('Rahul Sharma', 'rahul@gmail.com', 'rahul123', 'Hyderabad'),
('Priya Verma', 'priya@gmail.com', 'priya123', 'Mumbai'),
('Arjun Reddy', 'arjun@gmail.com', 'arjun123', 'Bangalore'),
('Sneha Kapoor', 'sneha@gmail.com', 'sneha123', 'Delhi'),
('Vikram Patel', 'vikram@gmail.com', 'vikram123', 'Chennai');

INSERT INTO category (category_name)
VALUES
('Electronics'),
('Skincare'),
('Fashion'),
('Books');

INSERT INTO product (name, description, price, stock, category_id)
VALUES
('Smartphone', '5G Android smartphone', 24999.00, 20, 1),
('Face Wash', 'Gentle skin cleanser', 299.00, 50, 2),
('T-Shirt', 'Cotton oversized t-shirt', 799.00, 40, 3),
('Novel Book', 'Fiction story book', 499.00, 25, 4),
('Wireless Earbuds', 'Bluetooth earbuds', 1999.00, 15, 1);

INSERT INTO orders (client_id, total_amount, status)
VALUES
(1, 25298.00, 'Placed'),
(2, 1098.00, 'Delivered'),
(3, 1999.00, 'Shipped'),
(4, 499.00, 'Delivered'),
(5, 299.00, 'Placed');

INSERT INTO order_item (order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 24999.00),
(1, 2, 1, 299.00),
(2, 3, 1, 799.00),
(2, 4, 1, 499.00),
(3, 5, 1, 1999.00),
(4, 4, 1, 499.00),
(5, 2, 1, 299.00);
