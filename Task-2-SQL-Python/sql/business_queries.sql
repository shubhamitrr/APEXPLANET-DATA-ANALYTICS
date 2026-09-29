-- ============================================
-- Task 2: SQL + Python Integration
-- Business Analysis Queries
-- ============================================

-- Q1. Display Top 10 Orders
SELECT *
FROM sales
LIMIT 10;


-- Q2. Orders with Total Sales Greater Than 200000
SELECT Order_ID, Product, Total_Sales
FROM sales
WHERE Total_Sales > 200000
ORDER BY Total_Sales DESC;


-- Q3. Top 10 Orders by Sales
SELECT Order_ID, Product, Total_Sales
FROM sales
ORDER BY Total_Sales DESC
LIMIT 10;


-- Q4. Category-wise Total Sales
SELECT
    Category,
    SUM(Total_Sales) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;


-- Q5. Categories with Sales Greater Than 40 Million
SELECT
    Category,
    SUM(Total_Sales) AS Total_Sales
FROM sales
GROUP BY Category
HAVING SUM(Total_Sales) > 40000000
ORDER BY Total_Sales DESC;


-- Q6. Customer and Order Information using JOIN
SELECT
    c.Customer_Name,
    c.City,
    o.Product,
    o.Total_Sales
FROM customers c
INNER JOIN orders o
    ON c.Customer_ID = o.Customer_ID
LIMIT 10;


-- Q7. Orders Above Average Sales
SELECT
    Order_ID,
    Product,
    Total_Sales
FROM sales
WHERE Total_Sales > (
    SELECT AVG(Total_Sales)
    FROM sales
)
ORDER BY Total_Sales DESC;


-- Q8. Highest Sale
SELECT
    Order_ID,
    Product,
    Total_Sales
FROM sales
WHERE Total_Sales = (
    SELECT MAX(Total_Sales)
    FROM sales
);


-- Q9. Category Sales using CTE
WITH category_sales AS (
    SELECT
        Category,
        SUM(Total_Sales) AS Total_Sales
    FROM sales
    GROUP BY Category
)
SELECT *
FROM category_sales
ORDER BY Total_Sales DESC;


-- Q10. Top 3 Categories using CTE
WITH category_sales AS (
    SELECT
        Category,
        SUM(Total_Sales) AS Total_Sales
    FROM sales
    GROUP BY Category
)
SELECT *
FROM category_sales
ORDER BY Total_Sales DESC
LIMIT 3;


-- Q11. Product Sales Ranking
SELECT
    Product,
    SUM(Total_Sales) AS Total_Sales,
    RANK() OVER (
        ORDER BY SUM(Total_Sales) DESC
    ) AS Sales_Rank
FROM sales
GROUP BY Product;


-- Q12. Product Row Number
SELECT
    Product,
    SUM(Total_Sales) AS Total_Sales,
    ROW_NUMBER() OVER (
        ORDER BY SUM(Total_Sales) DESC
    ) AS Row_Number
FROM sales
GROUP BY Product;


-- Q13. Top 5 Customers by Spending
SELECT
    c.Customer_ID,
    c.Customer_Name,
    SUM(o.Total_Sales) AS Total_Spending
FROM customers c
JOIN orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID, c.Customer_Name
ORDER BY Total_Spending DESC
LIMIT 5;


-- Q14. City-wise Sales
SELECT
    City,
    SUM(Total_Sales) AS Total_Sales,
    COUNT(*) AS Total_Orders
FROM sales
GROUP BY City
ORDER BY Total_Sales DESC;


-- Q15. Monthly Sales
SELECT
    substr(Order_Date, 1, 7) AS Month,
    SUM(Total_Sales) AS Total_Sales
FROM sales
GROUP BY Month
ORDER BY Month;


-- Q16. Average Order Value by Category
SELECT
    Category,
    AVG(Total_Sales) AS Average_Order_Value
FROM sales
GROUP BY Category
ORDER BY Average_Order_Value DESC;


-- Q17. Gender-wise Sales
SELECT
    Gender,
    SUM(Total_Sales) AS Total_Sales,
    COUNT(*) AS Total_Orders
FROM sales
GROUP BY Gender
ORDER BY Total_Sales DESC;


-- Q18. Top 5 Products by Sales
SELECT
    Product,
    SUM(Total_Sales) AS Total_Sales
FROM sales
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;


-- Q19. High-Value Customers
SELECT
    c.Customer_ID,
    c.Customer_Name,
    SUM(o.Total_Sales) AS Total_Spending
FROM customers c
JOIN orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID, c.Customer_Name
ORDER BY Total_Spending DESC;


-- Q20. Overall Business Summary
SELECT
    COUNT(*) AS Total_Orders,
    SUM(Quantity) AS Total_Quantity,
    SUM(Total_Sales) AS Total_Sales,
    AVG(Total_Sales) AS Average_Order_Value,
    MAX(Total_Sales) AS Highest_Order_Value
FROM sales;