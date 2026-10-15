SET PAGESIZE 100

DESC system.amazon;

SELECT *
FROM amazon
WHERE quantity > 10;


SELECT
	category,
	product_name,
	sales,
	quantity
FROM amazon
WHERE quantity > 10 AND category NOT IN ('Binders', 'Storage', 'Phones', 'Accessories')
ORDER BY category;

SELECT
	category,
	product_name,
	quantity
FROM amazon
WHERE quantity < 2 OR quantity > 12
ORDER BY quantity;


EXIT
