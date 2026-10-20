-- clean space with regexp
SELECT
    s,
    TRIM(INITCAP(REGEXP_REPLACE(s, ' +', ' '))) AS cleaned
FROM (SELECT '   hello   There     pal u GOOD?        ' AS s);

-- regexp replace and substring extraction
SELECT
    REGEXP_REPLACE(s, '[^A-Za-zåäöÅÄÖ ]','') AS only_letters,
    REGEXP_REPLACE(s, '[^0-9]','') AS only_numbers,
    REGEXP_SUBSTR(s, '\d+') AS first_number,
    REGEXP_SUBSTR(s, '\d+', 1, 2) AS second_number,
    REGEXP_SUBSTR(s, '@(.+)$',1,1,NULL,1) AS email_domain
FROM (SELECT 'Order#112412 - Björn23@hotmail.com' AS s);


-- clean phone number with regexp
SELECT
    -- dummy x 
    -- x maps to x and space match to nothing so they are deleted
    REPLACE(TRANSLATE(phone, 'x+ ','x'), '46', 0) AS translated,
    REPLACE(REGEXP_REPLACE(phone, '[^0-9]', ''),46,0) AS regex,
    REPLACE(REGEXP_REPLACE(phone, '\D', ''),46,0) AS regex2
FROM (SELECT '+46 731 52 62 12' AS phone);



EXIT
