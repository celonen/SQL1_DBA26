SET PAGESIZE 1500
DESC system.results_col3;


SELECT utbildningsomrade,
        SUM(BEVILJADE_PLATSER_TOTALT) AS antal_beviljade_ansokningar
FROM results_col3
GROUP BY utbildningsomrade
ORDER BY antal_beviljade_ansokningar DESC;


EXIT
