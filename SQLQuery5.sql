  --Retrieve all the customers' info
SELECT *
FROM dbo.customers
--Retrieve customers witha score not equal to zero.

SELECT *
FROM dbo.customers
WHERE  score != 0 --used to data before aggregation

SELECT 
	first_name,
	country
FROM dbo.customers
WHERE country = 'Germany'


-- Retrieve all the customers and sort the results by the highest score first
SELECT *
FROM dbo.customers
ORDER BY score DESC --Descending order

--Retrieve all the customers and sort the results by the lowest score first
SELECT *
FROM dbo.customers
ORDER BY score ASC --ascending order


--Retrieve all customers and sort the results by the Country and then by the highest score
SELECT *
FROM dbo.customers
ORDER BY country ASC, score DESC


-- Find the total score for each country
SELECT 
	country,
	SUM(score) AS total_score
FROM dbo.customers
GROUP BY country

--Find the total score and total number of customers per country
SELECT 
	country,
	SUM(score)AS total_score,
	COUNT(id) AS total_customers
FROM dbo.customers
GROUP BY country


--sort the results of the total score of each country and the total customers per country to greater than 800
SELECT 
country,
SUM(score)
FROM dbo.customers
WHERE score >400
GROUP BY country
HAVING SUM(score) >800  --HAVING is used to sort data after aggregation, while "WHERE" is used before aggregation

/*Find the average score for each country
considering only customers with score not equal to zero
and return only those countries with an average score greater than 430*/

SELECT 
	country,
	AVG (score) AS avg_score
FROM dbo.customers
WHERE score !=0
GROUP BY country
HAVING AVG (score) > 430

/*Find the average score for each country
considering only customers from UK
and return only those countries with an average score greater than 430*/

SELECT
	country,
	AVG(score)
FROM dbo.customers
WHERE country = 'UK'
GROUP BY country
HAVING AVG(score) >430

--Return unique lists of all countries
SELECT DISTINCT
country
FROM dbo.customers
