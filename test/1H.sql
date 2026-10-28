SET PAGESIZE 1500
DESC system.results_col3;


SELECT
    r1.utbildningsomrade,
    SUM(CASE
        WHEN r1.STUDIEFORM = 'Bunden'
        THEN r1.Sokta_platser_totalt
        ELSE 0
    END) AS antal_bunden_ansokningar,
    SUM(CASE
        WHEN r1.STUDIEFORM = 'Distans'
        THEN r1.Sokta_platser_totalt
        ELSE 0
    END) AS antal_distans_ansokningar,
    ROUND(
        100 * SUM(CASE WHEN r1.STUDIEFORM = 'Bunden'
            THEN r1.Sokta_platser_totalt ELSE 0 END)
        / NULLIF(SUM(r1.Sokta_platser_totalt), 0), 2
    ) || '%' AS andel_bunden_ansokningar,
    ROUND(
        100 * SUM(CASE WHEN r1.STUDIEFORM = 'Distans'
            THEN r1.Sokta_platser_totalt ELSE 0 END)
        / NULLIF(SUM(r1.Sokta_platser_totalt), 0), 2
    ) || '%' AS andel_distans_ansokningar,
    SUM(r1.Sokta_platser_totalt) AS totala_ansokningar
FROM results_col3 r1
GROUP BY
    r1.utbildningsomrade
ORDER BY
    r1.utbildningsomrade DESC;


EXIT
