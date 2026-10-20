SET PAGESIZE 100
DESC system.computer_prices;

SELECT * FROM computer_prices
FETCH FIRST 5 ROWS ONLY;

-- aggregation functions and group by
-- calculate stats
SELECT
    device_type,
    COUNT(*) AS number_devices,
    CAST(AVG(price) AS INT) AS avg_price,
    CAST(AVG(weight_kg) AS INT) AS avg_weight_kg,
    CAST(AVG(cpu_threads) AS INT) AS avg_cpu_threads
FROM computer_prices
GROUP BY device_type;

-- order from group by is not deterministic
SELECT
    brand,
    COUNT(*) AS number_devices,
    CAST(AVG(price) AS INT) AS avg_price,
    CAST(AVG(weight_kg) AS INT) AS avg_weight_kg,
    CAST(AVG(cpu_threads) AS INT) AS avg_cpu_threads
FROM computer_prices
GROUP BY brand;

-- order by makes it deterministic
SELECT
    brand,
    MIN(price) AS min_price,
    CAST(AVG(price) AS INT) AS avg_price,
    MEDIAN(price) AS median_price,
    MAX(price) AS min_price
FROM computer_prices
GROUP BY brand
ORDER BY brand;

SELECT brand, COUNT(*)
FROM computer_prices
GROUP BY brand;

-- WHERE vs HAVING
SELECT
    brand,
    COUNT(*) AS number_devices,
    ROUND(AVG(price), 2) AS avg_price
FROM computer_prices
WHERE release_year > 2023-- filters rows first
GROUP BY brand
HAVING COUNT(*) > 3000               -- filters groups after
ORDER BY avg_price DESC;



EXIT
