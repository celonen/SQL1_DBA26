SET PAGESIZE 1000

DESC system.salaries_sf;

SELECT * FROM system.salaries_sf
FETCH FIRST 5 ROWS ONLY;


-- count rows and alias
SELECT
	COUNT(*) AS number_rows,
	COUNT(*) number_rows
FROM 	salaries_sf;


-- unique job titles
SELECT
	COUNT(DISTINCT jobtitle) AS uniques_jobs,
	COUNT(DISTINCT year) AS uniques_years,
	COUNT(DISTINCT agency) AS uniques_agency
FROM	salaries_sf;

SELECT DISTINCT agency FROM salaries_sf;


-- exits sqlcl
EXIT
