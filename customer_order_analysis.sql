CREATE DATABASE customer_order_analysis;

USE customer_order_analysis;

CREATE TABLE customer_orders (
    customer_id VARCHAR(10),
    customer_name VARCHAR(50),
    order_id VARCHAR(10),
    order_date DATE,
    product VARCHAR(50),
    category VARCHAR(50),
    sales DECIMAL(10,2)
);

INSERT INTO customer_orders
(customer_id, customer_name, order_id, order_date, product, category, sales)
VALUES
('C001', 'Rahul Sharma', 'O1001', '2026-01-03', 'Laptop', 'Electronics', 55000),
('C001', 'Rahul Sharma', 'O1001', '2026-01-03', 'Wireless Mouse', 'Accessories', 1200),
('C001', 'Rahul Sharma', 'O1002', '2026-01-10', 'Keyboard', 'Accessories', 1800),
('C001', 'Rahul Sharma', 'O1003', '2026-01-18', 'Monitor', 'Electronics', 12500),
('C001', 'Rahul Sharma', 'O1004', '2026-02-02', 'Headphones', 'Accessories', 2500),

('C002', 'Priya Singh', 'O1005', '2026-01-05', 'Notebook', 'Stationery', 450),
('C002', 'Priya Singh', 'O1006', '2026-01-15', 'Office Chair', 'Furniture', 8500),
('C002', 'Priya Singh', 'O1006', '2026-01-15', 'Desk Lamp', 'Furniture', 1800),
('C002', 'Priya Singh', 'O1007', '2026-02-08', 'Printer', 'Electronics', 14500),

('C003', 'Amit Kumar', 'O1008', '2026-01-07', 'Smartphone', 'Electronics', 32000),
('C003', 'Amit Kumar', 'O1009', '2026-01-20', 'Power Bank', 'Accessories', 1800),

('C004', 'Neha Verma', 'O1010', '2026-01-09', 'Tablet', 'Electronics', 22000),
('C004', 'Neha Verma', 'O1011', '2026-01-25', 'USB Cable', 'Accessories', 500),
('C004', 'Neha Verma', 'O1012', '2026-02-12', 'Keyboard', 'Accessories', 1800),
('C004', 'Neha Verma', 'O1013', '2026-02-20', 'Webcam', 'Electronics', 3200),

('C005', 'Arjun Mehta', 'O1014', '2026-01-11', 'Laptop', 'Electronics', 58000),
('C005', 'Arjun Mehta', 'O1015', '2026-01-29', 'Mouse', 'Accessories', 1000),

('C006', 'Simran Kaur', 'O1016', '2026-01-13', 'Monitor', 'Electronics', 14000),
('C006', 'Simran Kaur', 'O1017', '2026-02-05', 'Desk Chair', 'Furniture', 7200),
('C006', 'Simran Kaur', 'O1017', '2026-02-05', 'Keyboard', 'Accessories', 1800),

('C007', 'Rohan Gupta', 'O1018', '2026-01-16', 'Headphones', 'Accessories', 2800),

('C008', 'Anjali Patel', 'O1019', '2026-01-19', 'Smartphone', 'Electronics', 35000),
('C008', 'Anjali Patel', 'O1020', '2026-02-15', 'Smartwatch', 'Electronics', 6500),

('C009', 'Vikas Yadav', 'O1021', '2026-01-22', 'Printer', 'Electronics', 15500),
('C009', 'Vikas Yadav', 'O1022', '2026-02-18', 'Ink Cartridge', 'Accessories', 2200),
('C009', 'Vikas Yadav', 'O1023', '2026-02-25', 'Paper Pack', 'Stationery', 650),

('C010', 'Pooja Sharma', 'O1024', '2026-01-27', 'Tablet', 'Electronics', 24000),
('C010', 'Pooja Sharma', 'O1025', '2026-02-10', 'Keyboard', 'Accessories', 1900),
('C010', 'Pooja Sharma', 'O1026', '2026-02-22', 'Mouse', 'Accessories', 1100);

-- Customer-wise unique order count
SELECT
    customer_id,
    customer_name,
    COUNT(DISTINCT order_id) AS order_count
FROM customer_orders
GROUP BY customer_id, customer_name
ORDER BY order_count DESC, customer_name ASC;

-- Top 5 customers
SELECT
    customer_id,
    customer_name,
    COUNT(DISTINCT order_id) AS order_count
FROM customer_orders
GROUP BY customer_id, customer_name
ORDER BY order_count DESC, customer_name ASC
LIMIT 5;