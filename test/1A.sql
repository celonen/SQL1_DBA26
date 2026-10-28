SET PAGESIZE 1500
DESC system.results_col3;

SELECT utbildningsomrade,
        SUM(SOKTA_PLATSER_TOTALT) AS antal_ansokningar
FROM results_col3
GROUP BY utbildningsomrade
ORDER BY antal_ansokningar DESC;


EXIT
