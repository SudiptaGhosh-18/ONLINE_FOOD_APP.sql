CREATE TABLE restaurants(
    restaurants_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    review VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    restaurant_id INT, 
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    quantity INT
);


INSERT INTO restaurants(restaurants_id, name, review, location)
VALUES
(3, 'Sahi', 'good', 'Delhi'),
(8, 'Biriyani Hub', 'Excelent', 'Kolkata'),
(97, 'Biriyani Banqet', 'Excelent', 'Mumbai');

INSERT INTO orders (order_id, restaurant_id, customer_id, order_date, total_amount, quantity)
VALUES 
(81, 8, 101, '2026-06-02', 456.98, 2), 
(98, 3, 102, '2026-06-02', 730.00, 3); -


SELECT 
    o.order_id,
    r.name AS restaurant_name,
    o.total_amount,
    o.quantity
FROM orders o
INNER JOIN restaurants r ON o.restaurant_id = r.restaurants_id;
