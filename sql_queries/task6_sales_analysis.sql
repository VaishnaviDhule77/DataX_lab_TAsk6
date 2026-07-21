Create the Table & Insert Data:

-- Create the orders table
CREATE TABLE IF NOT EXISTS online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Insert sample sales data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(101, '2024-01-05', 150.00, 1),
(102, '2024-01-12', 200.00, 2),
(103, '2024-01-15', 350.00, 1),
(104, '2024-02-01', 120.00, 3),
(105, '2024-02-14', 500.00, 2),
(106, '2024-02-20', 250.00, 1),
(107, '2024-03-05', 400.00, 4),
(108, '2024-03-10', 600.00, 2),
(109, '2024-03-22', 150.00, 3),
(110, '2024-03-28', 300.00, 1),
(111, '2024-04-02', 800.00, 5),
(112, '2024-04-18', 450.00, 2);




MAIN QUERY: Monthly Revenue and Order Volume:

SELECT 
    YEAR(order_date) AS sales_year,
    MONTH(order_date) AS sales_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_order_volume
FROM 
    online_sales
GROUP BY 
    YEAR(order_date),
    MONTH(order_date)
ORDER BY 
    sales_year, 
    sales_month;

