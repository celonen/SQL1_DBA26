SET PAGESIZE 1000

DESC system.salaries_sf;


-- sorting by totalpaybenefits descending
SELECT
	id,
	employeename,
	jobtitle,
	totalpaybenefits
FROM
	salaries_sf
ORDER BY totalpaybenefits DESC
FETCH FIRST .1 PERCENT ROWS ONLY;


-- sorting by employeename ascending and then basebay descending
SELECT
	id,
	employeename,
	basepay
FROM
	salaries_sf;
ORDER BY employeename, basepay DESC
FETCH FIRST .1 PERCENT ROWS ONLY;


-- exits sqlcl
EXIT
