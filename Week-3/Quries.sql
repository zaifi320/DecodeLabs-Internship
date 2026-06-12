-- Total orders 
SELECT COUNT(*) as Total_Orders
FROM cleaned_dataset;

-- Total sales 
SELECT SUM(TotalPrice) as Total_Sales
FROM cleaned_dataset;

-- Average order price
SELECT AVG(TotalPrice) as Average_price
FROM cleaned_dataset;

-- Total sales for each product
SELECT Product, SUM(TotalPrice) AS total_sales
FROM cleaned_dataset
GROUP BY Product;

-- Get all cancelled orders
SELECT *
FROM cleaned_dataset
WHERE OrderStatus = 'Cancelled';
-- Total number of orders for each referral source
SELECT ReferralSource, COUNT(*) AS total_orders
FROM cleaned_dataset
GROUP BY ReferralSource
ORDER BY total_orders DESC;
-- Total number of orders for each order status
SELECT OrderStatus, COUNT(*) AS total_orders
FROM cleaned_dataset
GROUP BY OrderStatus
ORDER BY total_orders DESC;

-- Total number of orders for each product
SELECT Product, COUNT(*) AS total_orders
FROM cleaned_dataset
GROUP BY Product
ORDER BY total_orders DESC;
