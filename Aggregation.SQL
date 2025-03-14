** 1.Count the number of sales transactions for each product.  

SELECT PROD_ID, COUNT(*) AS transaction_count
FROM SH.SALES
GROUP BY PROD_ID;

**2. Find the average sale amount for each product.

SELECT  PROD_ID, AVG(AMOUNT_SOLD) AS average_sale_amount
FROM SH.SALES
GROUP BY PROD_ID;

** 3.Find the maximum and minimum sale amount for each product.

SELECT PROD_ID, 
       MAX(AMOUNT_SOLD) AS max_sale_amount,
       MIN(AMOUNT_SOLD) AS min_sale_amount
FROM SH.SALES
GROUP BY PROD_ID;

**4. Find the total revenue generated by each product.

SELECT PROD_ID, 
       SUM(AMOUNT_SOLD) AS total_revenue
FROM SH.SALES
GROUP BY PROD_ID;

***5.Count the number of sales transactions for each customer

SELECT CUST_ID, COUNT(*) AS transaction_count
FROM SH.SALES
GROUP BY CUST_ID;

***-- 6. Find the average sale amount per customer.  

SELECT CUST_ID, 
       AVG(AMOUNT_SOLD) AS average_sale_amount
FROM SH.SALES
GROUP BY CUST_ID;

***  Find the highest purchase amount for each customer.

SELECT CUST_ID, 
       MAX(AMOUNT_SOLD) AS highest_purchase_amount
FROM SH.SALES
GROUP BY CUST_ID;

*** 8.Find the lowest purchase amount for each customer. 

SELECT CUST_ID, 
       MIN(AMOUNT_SOLD) AS lowest_purchase_amount
FROM SH.SALES
GROUP BY CUST_ID;

***9.SELECT store_location_id, 
       SUM(AMOUNT_SOLD) AS total_revenue
FROM SH.SALES
GROUP BY store_location_id;

*** 10.  Count the number of sales transactions for each region.

SELECT COUNTRY_REGION_ID, 
       COUNT(*) AS transaction_count
FROM SH.SALES
GROUP BY COUNTRY_REGION_ID;

***11.Find the total revenue per region. in sql

SELECT COUNTRY_REGION_ID, 
       SUM(AMOUNT_SOLD) AS total_revenue
FROM SH.SALES
GROUP BY COUNTRY_REGION_ID;

***12.Find the average sale amount per region.

SELECT COUNTRY_REGION_ID, AVG(AMOUNT_SOLD)AS average_sale_amount
FROM SH.SALES
GROUP BY COUNTRY_REGION_ID;

*** 13.Count the number of sales per month. 

SELECT YEAR(sales_date) AS year,
       MONTHNAME(sales_date) AS month,
       COUNT(*) AS sales_count
FROM SH.SALES
GROUP BY YEAR(sales_date), MONTH(sales_date)
ORDER BY year, MONTH(sales_date);

***14. Find the total revenue per month.

SELECT YEAR(sale_date) AS year,
       MONTH(sale_date) AS month,
       SUM(sale_amount) AS total_revenue
FROM SH.SALES
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY year, month;

*** 15.Find the product that generated the highest revenue.

SELECT product_id, SUM(sale_amount) AS total_revenue
FROM SH.SALES
GROUP BY PROD_ID
ORDER BY total_revenue DESC
LIMIT 1;

***16. Find the most frequently purchased product.

SELECT PROD_ID, COUNT(*) AS purchase_count
FROM SH.SALES
GROUP BY PROD_ID
ORDER BY purchase_count DESC
LIMIT 1;

***17.Find the most valuable customer based on total spending.  

SELECT CUST_ID, SUM(AMOUNT_SOLD) AS total_spending
FROM SH.SALES
GROUP BY CUST_ID
ORDER BY total_spending DESC
LIMIT 1;

***18. Find the total revenue per sales channel (e.g., online vs. offline).

SELECT CHANNEL_ID, 
       SUM(AMOUNT_SOLD) AS total_revenue
FROM SH.SALES
GROUP BY CHANNEL_ID;

***19.Count the number of sales for each payment method.

SELECT payment_method, 
       COUNT(*) AS sales_count
FROM SH.SALES
GROUP BY payment_method;

***20. Find the total revenue generated per payment method. 

SELECT payment_method, 
       SUM(AMOUNT_SOLD) AS total_revenue
FROM SH.SALES
GROUP BY payment_method;
