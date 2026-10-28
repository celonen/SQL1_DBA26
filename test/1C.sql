SET PAGESIZE 1500
DESC system.results_col3;


SELECT utbildningsomrade,
        (SUM(SOKTA_PLATSER_TOTALT)) -
        (SUM(BEVILJADE_PLATSER_UTBILDNINGSO) +
        SUM(BEVILJADE_PLATSER_UTBILDNINGS2) +
        SUM(BEVILJADE_PLATSER_UTBILDNINGS3) +
        SUM(BEVILJADE_PLATSER_UTBILDNINGS4) +
        SUM(BEVILJADE_PLATSER_UTBILDNINGS5)) AS antal_avslagna_ansokningar
FROM results_col3
GROUP BY utbildningsomrade
ORDER BY antal_avslagna_ansokningar DESC;


EXIT
