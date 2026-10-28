CREATE TABLE IF NOT EXISTS utbildningsomrade AS
SELECT
    ROW_NUMBER() OVER (ORDER BY utbildningsomrade_id) AS utbildningsomrade_id,
    utbildningsomrade_id,
    utbildningsomrade
FROM (SELECT DISTINCT utbildningsomrade FROM results_col3);


CREATE TABLE IF NOT EXISTS sun5_inriktning AS
SELECT
    ROW_NUMBER() OVER (ORDER BY sun5_kod) AS sun5_kod,
    sun5_inriktning,
    utbildningsomrade_id,
    sun5_inriktning_namn
FROM (SELECT DISTINCT sun5_inriktning, sun5_inriktning_namn FROM results_col3);


CREATE TABLE IF NOT EXISTS seqf AS
SELECT
    ROW_NUMBER() OVER (ORDER BY seqf_niva) AS seqf_niva,
    seqf_niva,
    examenstyp
FROM (SELECT DISTINCT seqf_niva, examenstyp FROM results_col3);


CREATE TABLE IF NOT EXISTS utbildningsanordnare AS
SELECT
    ROW_NUMBER() OVER (ORDER BY anordnare_id) AS anordnare_id,
    anordnare_id,
    utbildningsanordnare_administr,
    huvudmannatyp
FROM (SELECT DISTINCT utbildningsanordnare_administr, huvudmannatyp FROM results_col3);


CREATE TABLE IF NOT EXISTS lan AS
SELECT
    ROW_NUMBER() OVER (ORDER BY lan_id) AS lan_id,
    lan_id,
    lan
FROM (SELECT DISTINCT lan FROM results_col3);


CREATE TABLE IF NOT EXISTS kommun AS
SELECT
    ROW_NUMBER() OVER (ORDER BY kommun_id) AS kommun_id,
    kommun_id,
    kommun,
    lan_id
FROM (SELECT DISTINCT kommun FROM results_col3);


CREATE TABLE IF NOT EXISTS ansokan_kommun AS
SELECT
    ROW_NUMBER() OVER (ORDER BY ansokan_kommun_id) AS ansokan_kommun_id,
    ansokan_kommun_id,
    diarienummer,
    kommun_id
FROM (SELECT DISTINCT diarienummer FROM results_col3);


CREATE TABLE IF NOT EXISTS ansokan AS
SELECT
    ROW_NUMBER() OVER (ORDER BY diarienummer) AS diarienummer,
    diarienummer,
    sun5_inriktning,
    seqf_niva,
    utbildningsanordnare_administr,
    utbildningsnamn,
    beslut,
    yh_pooang,
    studieform,
    studietakt,
    smalt_yrkesomrade,
    sokta_utbildningsomgangar,
    beviljade_utbildningsomgangar,
    sokta_platser_totalt
    beviljade_platser_totalt
FROM (SELECT DISTINCT diarienummer, sun5_inriktning, seqf_niva, anordnare_id, utbildningsnamn, beslut, yh_pooang, studieform, studietakt, smalt_yrkesomrade, sokta_utbildningsomgangar, beviljade_utbildningsomgangar, sokta_platser_totalt, beviljade_platser_totalt FROM results_col3);


EXIT
