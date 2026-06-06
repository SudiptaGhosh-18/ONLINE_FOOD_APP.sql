CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    restaurant_id INT,
    order_amount INT);

INSERT INTO restaurants (restaurant_id, restaurant_name, city) VALUES
(101, 'The Mumbai Spice', 'Mumbai'),
(102, 'Delhi Darbar', 'Delhi'),
(103, 'Marine Drive Bistro', 'Mumbai'),
(104, 'Bangalore Cafe', 'Bangalore');


INSERT INTO orders (order_id, restaurant_id, order_amount) VALUES
(1, 101, 450),
(2, 102, 320),
(3, 103, 890),
(4, 101, 150),
(5, 104, 600);


SELECT r.restaurant_name, o.order_id FROM orders o
JOIN restaurants r ON o.restaurant_id = r.restaurant_id
WHERE r.city = 'Mumbai';



