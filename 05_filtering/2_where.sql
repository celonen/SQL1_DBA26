SET PAGESIZE 100;

SELECT * FROM amazon
FETCH FIRST 5 ROWS ONLY;

DESC system.amazon;

SELECT
	order_id,
	category,
	product_name,
	sales,
	quantity,
	profit
FROM amazon
WHERE profit > 190
ORDER BY profit DESC;

-- number of orders where profit are higher than 190
SELECT COUNT(*)
FROM amazon
WHERE profit > 190;


-- all orderlines in order CA-2011-115812
SELECT *
FROM amazon
WHERE order_id = 'CA-2011-115812';

-- this email has shopped one time with 7 orderlines
SELECT *
FROM amazon
WHERE emailid = 'BrosinaHoffman@gmail.com';


-- sales stats                                              
SELECT                                                                 │
        MIN(sales),                                                    │
        MEDIAN(sales),                                                 │
        ROUND(AVG(sales)),
        MAX(sales)                                                     │
FROM amazon;


-- sales stats for phones
SELECT
	MIN(sales),
	MEDIAN(sales),
	ROUND(AVG(sales)) AS mean,
	MAX(sales)
FROM amazon
WHERE category = 'Phones';


-- IN
SELECT *
FROM amazon
WHERE category IN ('Phones', 'Chairs');


EXIT
