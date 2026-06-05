CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(100) UNIQUE);
CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    restaurant_id INT,
    customer_id INT, 
    order_date DATE,
    total_amount DECIMAL(10, 2),
    quantity INT);
INSERT INTO customers(customer_id, name, phone)
VALUES(3, 'Sunil Shetty', '1234567890'),
(81, 'Shilpa Shetty', '9876543210'),
(98, 'Akshay Kumar', '6789012345');
INSERT INTO orders (order_id, restaurant_id, customer_id, order_date, total_amount, quantity)
VALUES(81, 8, 81, '2023-01-23', 456.98, 2),
(98, 3, 98, '2026-06-02', 730.00, 3);
CREATE TABLE restaurants(    restaurants_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    review VARCHAR(100),
    location VARCHAR(100)
);INSERT INTO restaurants(restaurants_id, name, review, location)
VALUES(3, 'Sahi', 'good', 'Delhi'),
(8, 'Biriyani Hub', 'Excelent', 'Kolkata'),
(97, 'Biriyani Banqet', 'Excelent', 'Mumbai');

SELECT 
    c.name AS customer_name,
    r.location AS city,
    o.order_date
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN restaurants r ON o.restaurant_id = r.restaurants_id
WHERE o.order_date >= '2023-01-01';
