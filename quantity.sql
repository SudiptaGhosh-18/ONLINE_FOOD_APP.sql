CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    restaurant_id INT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    quantity INT
);
select * from orders;
INSERT INTO orders (order_id, restaurant_id, customer_id, order_date, total_amount, quantity)
VALUES 
(81, 08, 101, '2026-06-02', 456.98, 2),
(98, 03, 102, '2026-06-02', 730.00, 3);
select order_id from orders where quantity>2;
