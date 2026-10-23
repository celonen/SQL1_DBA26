-- string function on an existing table (computer_prices)

SELECT
    release_year,
    SUBSTR(release_year, -2) AS year,
    brand || '-' || SUBSTR(release_year, -2) AS brand_year
FROM computer_prices
FETCH FIRST 10 ROWS ONLY;


EXIT
