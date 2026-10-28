SET PAGESIZE 1500
DESC system.results_col3;


SELECT
        studieform,
        COUNT(*) AS antal_ansokningar,
        SUM(CASE WHEN Beslut = 'Beviljad'
                THEN 1 ELSE 0 END) AS antal_beviljade,
        SUM(CASE WHEN Beslut = 'Avslag'
                THEN 1 ELSE 0 END) AS antal_avslag,
        ROUND(
        100 * SUM(CASE WHEN Beslut = 'Beviljad'
                THEN 1 ELSE 0 END) / COUNT(*), 2
        ) AS beviljandegrad_procent
FROM results_col3
WHERE utbildningsomrade = 'Data/IT'
        AND Beslut IN ('Beviljad', 'Avslag')
GROUP BY
        studieform
HAVING COUNT(*) >= 5
ORDER BY beviljandegrad_procent DESC;


EXIT
