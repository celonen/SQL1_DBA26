SET PAGESIZE 1500
DESC system.results_col3;


SELECT
	SUN5_INRIKTNING,
	SUN5_INRIKTNING_NAMN,	
	COUNT(*) AS ansokningar,
	SUM(CASE WHEN Beslut = 'Beviljad'
		THEN 1 ELSE 0 END) AS beviljade,
	SUM(CASE WHEN Beslut = 'Avslag'
		THEN 1 ELSE 0 END) AS avslag,
	ROUND(
	100 * SUM(CASE WHEN Beslut = 'Beviljad'
		THEN 1 ELSE 0 END) / COUNT(*), 2
	) AS beviljande_procent
FROM results_col3
WHERE (UTBILDNINGSOMRADE LIKE '%Transporttj_nster%')
	AND Beslut IN ('Beviljad', 'Avslag')
GROUP BY
	SUN5_INRIKTNING,
	SUN5_INRIKTNING_NAMN
ORDER BY beviljande_procent DESC;


EXIT
