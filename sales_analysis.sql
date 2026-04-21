CREATE DATABASE sales_db;
USE sales_db;
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
INSERT INTO online_sales VALUES
(1, '2023-01-05', 200, 101),
(2, '2023-01-15', 350, 102),
(3, '2023-02-10', 500, 103),
(4, '2023-02-20', 700, 101),
(5, '2023-03-05', 300, 104),
(6, '2023-03-25', 900, 102),
(7, '2023-03-30', 400, 103);
SELECT * FROM online_sales;
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;
SELECT 
    MONTH(order_date) AS month,
    COUNT(order_id) AS total_orders,
    SUM(amount) AS revenue
FROM online_sales
GROUP BY month
ORDER BY revenue DESC;
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;