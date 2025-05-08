-- Retrieve each customers name, country and score
SELECT 
	--The order in which d columns are written is the same order in which d columns would be displayed
	first_name,
	country,
	score  -- No need for a comma after the last column, it would show an error message if a comma is inserted.
FROM dbo.customers