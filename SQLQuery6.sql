USE  MyDatabase

--Retrieve only 3 customers
SELECT TOP 3 *
FROM dbo.customers

--Retrieve the Top 3 customers with the highest scores
SELECT TOP 3 *
FROM dbo.customers
ORDER BY score DESC

--Retrieve the lowest two customers based on the scores

SELECT TOP 2 *
FROM dbo.customers
ORDER BY score ASC

--Get the two most recent orders
SELECT TOP 2*
FROM dbo.orders
ORDER BY order_date DESC
