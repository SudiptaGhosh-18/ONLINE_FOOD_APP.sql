CREATE TABLE restaurants(
    restaurants_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    review VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(100) UNIQUE
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    restaurant_id INT REFERENCES restaurants(restaurants_id),
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    total_amount DECIMAL(10, 2),
    quantity INT
);

INSERT INTO restaurants(restaurants_id, name, review, location)
VALUES
(3, 'Sahi', 'good', 'Delhi'),
(8, 'Biriyani Hub', 'Excellent', 'Kolkata'),
(97, 'Biriyani Banquet', 'Excellent', 'Mumbai');

INSERT INTO customers(customer_id, name, phone)
VALUES
(101, 'Shilpa Shetty', '9876543210'),
(102, 'Akshay Kumar', '6789012345'), 
(3, 'Sunil Shetty', '1234567890');

INSERT INTO orders (order_id, restaurant_id, customer_id, order_date, total_amount, quantity)
VALUES 
(81, 8, 101, '2023-01-23', 456.98, 2), 
(98, 3, 102, '2026-06-02', 730.00, 3);  


SELECT DISTINCT
    c.name AS customer_name,
    r.location AS city,
    o.order_date
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN restaurants r ON o.restaurant_id = r.restaurants_id
WHERE o.order_date >= '2023-01-01';
