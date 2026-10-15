SET PAGESIZE 100

DESC system.amazon;

SELECT AVG(profit)
FROM amazon;

SELECT
	product_name,
	category,
	profit,
	CASE
		WHEN profit < AVG(profit) OVER () THEN 'Low'
		WHEN profit < MAX(profit) OVER () -10 THEN 'High'
		ELSE 'Super High'
	END AS profit_level
FROM amazon
FETCH FIRST 1 PERCENT ROWS ONLY;


EXIT
