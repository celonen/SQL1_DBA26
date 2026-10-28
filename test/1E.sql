SET PAGESIZE 1500
DESC system.results_col3;


SELECT
	utbildningsnamn,
	(SUM(SOKTA_PLATSER_TOTALT)) -
       SUM(BEVILJADE_PLATSER_UTBILDNINGSO) +
       SUM(BEVILJADE_PLATSER_UTBILDNINGS2) +
       SUM(BEVILJADE_PLATSER_UTBILDNINGS3) +
       SUM(BEVILJADE_PLATSER_UTBILDNINGS4) +
       SUM(BEVILJADE_PLATSER_UTBILDNINGS5) AS antal_avslagna_ansokningar
FROM results_col3
WHERE utbildningsomrade = 'Data/IT'
	AND utbildningsnamn LIKE '%Data%'
   	OR utbildningsnamn LIKE '%IT%'
GROUP BY utbildningsnamn
ORDER BY utbildningsnamn DESC;


EXIT
