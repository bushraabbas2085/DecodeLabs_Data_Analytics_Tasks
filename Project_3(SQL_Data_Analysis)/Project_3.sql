--===============================================================
--               Project_3: SQL DATA ANALYSIS
--===============================================================


--================================================
--Step 1: Created the Table orders
--USE OF CREATE 
--================================================
CREATE TABLE orders (
    order_id VARCHAR(50) PRIMARY KEY,
    order_date DATE,
    customer_id VARCHAR(50),
    product VARCHAR(150),
    quantity INTEGER,
    unit_price NUMERIC(12,2),
    shipping_address TEXT,
    payment_method VARCHAR(100),
    order_status VARCHAR(100),
    tracking_number VARCHAR(100),
    items_in_cart INTEGER,
    coupon_code VARCHAR(100),
    referral_source VARCHAR(100),
    total_price NUMERIC(12,2)
);
--==================================================
--Step 2: Imported the data from Cleaned_Dataset.csv 
--file to orders table
--==================================================

--==================================================
--Step 3: Explore and Display of Records
--USE OF SELECT 
--==================================================

--Display all the records
SELECT * FROM orders;

--Display first 10 records
SELECT * FROM orders
LIMIT 10;

--Display selected columns
SELECT order_id,order_date,product,quantity,
unit_price,total_price
FROM orders;

--Display unique products
SELECT DISTINCT product
FROM orders;

--Display unique payment methods
SELECT DISTINCT payment_method
FROM orders;

--=================================================
--Step 4 : Fitter the Data
--USE OF WHERE 
--=================================================

--Completed Orders
SELECT * FROM orders
WHERE order_status = 'Delivered';

--Cancelled Orders
SELECT * FROM orders
WHERE order_status = 'Cancelled';

--Pending Orders
SELECT * FROM orders
WHERE order_status = 'Pending';

--Returned Orders
SELECT * FROM orders
WHERE order_status = 'Returned';

--Orders with price > 3000
SELECT order_id,product,total_price
FROM orders
WHERE total_price > 3000
ORDER BY total_price DESC;

--Orders with Credit Card payment
SELECT * FROM orders
WHERE payment_method = 'Credit Card';

--Orders with Cash payment
SELECT * FROM orders
WHERE payment_method = 'Cash';

--Orders within specified Date range
SELECT * FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY order_date;

--=================================================
--Step 4 : Sort the Data
--USE OF ORDER BY
--=================================================

--Sort orders by price from highest to lowest
SELECT order_id,product,total_price
FROM orders
ORDER BY total_price DESC;

--Sort orders by price from lowest to highest
SELECT order_id,product,total_price
FROM orders
ORDER BY total_price ASC;

--Top 10 orders with high price
SELECT order_id,product,total_price
FROM orders
ORDER BY total_price DESC
LIMIT 10;

--Sort orders by date from oldest to newest
SELECT order_id,order_date,product
FROM orders
ORDER BY order_date ASC;

--=================================================
--Step 5 : Aggregate functions
--USE OF COUNT, SUM and AVG Functions
--=================================================

--Count total records
SELECT COUNT(*) AS total_orders
FROM orders;

--Calculate total order value
SELECT SUM(total_price) AS total_order_value
FROM orders;

--Calculate average order value
SELECT AVG(total_price) AS average_order_value
FROM orders;

--Count the total products ordered
SELECT SUM(quantity) AS total_quantity
FROM orders;

--Minimum and Maximum order value
SELECT
    MIN(total_price) AS minimum_order_value,
    MAX(total_price) AS maximum_order_value
FROM orders;

--=================================================
--Step 6 : Analysis by Category
--USE OF GROUP BY
--=================================================

--Count orders by product
SELECT product,COUNT(*) AS total_orders
FROM orders
GROUP BY product
ORDER BY total_orders DESC;

--Calculate order value by product
SELECT product,SUM(total_price) AS total_order_value,
AVG(total_price) AS avg_order_value
FROM orders
GROUP BY product
ORDER BY total_order_value DESC;

--Payment method Analysis
SELECT payment_method,COUNT(*) AS total_orders,
SUM(total_price) AS total_order_value,
AVG(total_price) AS avg_order_value
FROM orders
GROUP BY payment_method
ORDER BY total_orders DESC;

--Order status Analysis
SELECT order_status,COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

--Referral source Analysis
SELECT referral_source,COUNT(*) AS total_orders
FROM orders
GROUP BY referral_source
ORDER BY total_orders DESC;
--=================================================
--Step 7 : Filtering grouped results
--USE OF HAVING
--=================================================

--Product with more orders
SELECT product,COUNT(*) AS total_orders
FROM orders
GROUP BY product
HAVING COUNT(*) > 150
ORDER BY total_orders DESC;

--Payment method with more average order value
SELECT payment_method,AVG(total_price) AS average_order_value
FROM orders
GROUP BY payment_method
HAVING AVG(total_price) > 1050
ORDER BY average_order_value DESC;

--Customers with multiple orders
SELECT customer_id,COUNT(*) AS total_orders,
SUM(total_price) AS total_order_value
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1
ORDER BY total_orders DESC;

--=================================================
--Step 7 : Date Wise Analysis
--USE OF EXTRACT and TO_CHAR
--=================================================

--Orders by year
SELECT EXTRACT(YEAR FROM order_date) AS order_year,
COUNT(*) AS total_orders,
SUM(total_price) AS total_order_value,
AVG(total_price) AS avg_order_value
FROM orders
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY order_year;

--Orders by month
SELECT TO_CHAR(order_date, 'YYYY-MM') AS order_month,
COUNT(*) AS total_orders,
SUM(total_price) AS total_order_value,
AVG(total_price) AS avg_order_value
FROM orders
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY order_month;

--=================================================
--Step 8: Data Validation
--=================================================

--Check for Missing Values
SELECT
COUNT(*) FILTER (WHERE order_id IS NULL) AS missing_order_id,
COUNT(*) FILTER (WHERE order_date IS NULL) AS missing_date,
COUNT(*) FILTER (WHERE product IS NULL) AS missing_product,
COUNT(*) FILTER (WHERE quantity IS NULL) AS missing_quantity,
COUNT(*) FILTER (WHERE total_price IS NULL) AS missing_total_price
FROM orders;

--Check for Duplicates OrderIDs
SELECT order_id,COUNT(*) AS duplicate_count
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

--Check for Date Range
SELECT MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date
FROM orders;