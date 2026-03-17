-- SQL queries written to analyse structured sales dataset
-- Generated after Python-based ETL and data modeling

-- Sales Performance & Decision Intelligence
-- Analytical SQL queries based on the final star schema

-- 1. Total revenue
SELECT SUM(Sales) AS total_revenue
FROM fact_sales;

-- 2. Total transactions
SELECT COUNT(DISTINCT [Order ID]) AS total_orders
FROM fact_sales;

-- 3. Revenue by region
SELECT Region, SUM(Sales) AS revenue
FROM fact_sales
GROUP BY Region
ORDER BY revenue DESC;

-- 4. Revenue by category
SELECT p.Category, SUM(f.Sales) AS revenue
FROM fact_sales f
JOIN dim_product p
  ON f.[Product ID] = p.[Product ID]
GROUP BY p.Category
ORDER BY revenue DESC;

-- 5. Top 10 customers by revenue
SELECT c.[Customer Name], SUM(f.Sales) AS revenue
FROM fact_sales f
JOIN dim_customer c
  ON f.[Customer ID] = c.[Customer ID]
GROUP BY c.[Customer Name]
ORDER BY revenue DESC
LIMIT 10;

-- 6. Monthly sales trend
SELECT d.Year, d.Month, SUM(f.Sales) AS monthly_revenue
FROM fact_sales f
JOIN dim_date d
  ON f.[Order Date] = d.[Order Date]
GROUP BY d.Year, d.Month
ORDER BY d.Year, d.Month;

-- 7. Revenue by segment
SELECT c.Segment, SUM(f.Sales) AS revenue
FROM fact_sales f
JOIN dim_customer c
  ON f.[Customer ID] = c.[Customer ID]
GROUP BY c.Segment
ORDER BY revenue DESC;

-- 8. Revenue by sub-category
SELECT p.[Sub-Category], SUM(f.Sales) AS revenue
FROM fact_sales f
JOIN dim_product p
  ON f.[Product ID] = p.[Product ID]
GROUP BY p.[Sub-Category]
ORDER BY revenue DESC;

-- 9. Revenue concentration by region
SELECT Region,
       SUM(Sales) AS revenue,
       ROUND(100.0 * SUM(Sales) / (SELECT SUM(Sales) FROM fact_sales), 2) AS revenue_share_pct
FROM fact_sales
GROUP BY Region
ORDER BY revenue DESC;

-- 10. Underperforming segments
SELECT c.Segment, SUM(f.Sales) AS revenue
FROM fact_sales f
JOIN dim_customer c
  ON f.[Customer ID] = c.[Customer ID]
GROUP BY c.Segment
ORDER BY revenue ASC;