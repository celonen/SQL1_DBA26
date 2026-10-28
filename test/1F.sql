SET PAGESIZE 1500
DESC system.results_col3;


SELECT utbildningsanordnare_administr,
	utbildningsnamn,
        SUM(BEVILJADE_PLATSER_UTBILDNINGSO) +
        SUM(BEVILJADE_PLATSER_UTBILDNINGS2) +
        SUM(BEVILJADE_PLATSER_UTBILDNINGS3) +
        SUM(BEVILJADE_PLATSER_UTBILDNINGS4) +
        SUM(BEVILJADE_PLATSER_UTBILDNINGS5) AS antal_beviljade_ansokningar
FROM results_col3
WHERE utbildningsomrade = 'Data/IT'
	AND utbildningsnamn LIKE '%Data%'
   	OR utbildningsnamn LIKE '%IT%'
GROUP BY utbildningsanordnare_administr, utbildningsnamn
HAVING SUM(BEVILJADE_PLATSER_UTBILDNINGSO) +
       SUM(BEVILJADE_PLATSER_UTBILDNINGS2) +
       SUM(BEVILJADE_PLATSER_UTBILDNINGS3) +
       SUM(BEVILJADE_PLATSER_UTBILDNINGS4) +
       SUM(BEVILJADE_PLATSER_UTBILDNINGS5) > 0
ORDER BY antal_beviljade_ansokningar DESC;


EXIT