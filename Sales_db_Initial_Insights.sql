-- SQL Code for Initial Insights on Sales Database

-- Query to get the total sales by product
SELECT product_id, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_id;

-- Query to find the top 5 products by sales
SELECT product_id, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 5;

-- Query to get sales trends over time
SELECT DATE(sales_date) AS sale_date, SUM(sales_amount) AS daily_sales
FROM sales
GROUP BY sale_date
ORDER BY sale_date;

-- Query to analyze sales by region
SELECT region, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY region;
