# Data Analyst Internship - Task 6: Sales Trend Analysis Using Aggregations

## Overview
This project analyzes monthly revenue and order volume trends using **MySQL on XAMPP (phpMyAdmin)**.

## MySQL Query Used
```sql
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
