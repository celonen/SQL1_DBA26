SET PAGESIZE 1500
DESC system.results_col3;


SELECT Utbildningsomrade, 
	SUM(sokta_platser_totalt) AS antal_sokta_platser, 
	SUM(beviljade_platser_totalt) AS antal_beviljade_platser, 
	SUM(sokta_platser_totalt) - SUM(beviljade_platser_totalt) AS skillnad_antal_platser, 
	ROUND( 100 * SUM(beviljade_platser_totalt) 
	/ NULLIF(SUM(sokta_platser_totalt), 0), 2 ) AS andel_beviljade_platser_procent
FROM results_col3
WHERE Beslut IN ('Beviljad', 'Avslag')
GROUP BY Utbildningsomrade
ORDER BY skillnad_antal_platser DESC;

EXIT
