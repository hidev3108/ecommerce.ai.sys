-- Insert default users
INSERT INTO users (username, password, role, enabled) VALUES
('admin', '{bcrypt}admin', 'ROLE_ADMIN', TRUE),
('user1', '{bcrypt}password1', 'ROLE_USER', TRUE);

-- Insert default products
INSERT INTO products (name, description, price, stock, category) VALUES
('Laptop', 'High-performance laptop', 999.99, 50, 'Electronics'),
('Headphones', 'Noise-cancelling headphones', 199.99, 100, 'Electronics'),
('Coffee Maker', 'Automatic coffee maker', 89.99, 30, 'Appliances');

-- Insert default reviews
INSERT INTO reviews (product_id, rating, comment) VALUES
(1, 5, 'Amazing laptop!'),
(2, 4, 'Great sound quality but a bit pricey.'),
(3, 3, 'Decent coffee maker for the price.');

-- Insert default orders
INSERT INTO orders (user_id, total) VALUES
(2, 1189.97);  -- Assuming user with ID 2 placed an order with a total of $1189.97

-- Insert default order items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 999.99),  -- One laptop
(1, 2, 1, 199.99);  -- One pair of headphones
