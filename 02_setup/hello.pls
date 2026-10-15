-- displays the output from PL/SQL
SET SERVEROUTPUT ON;

-- variables and constants goes here
DECLARE
    message varchar2(20):='Hello PL/SQL';
-- executable statements
BEGIN 
    dbms_output.put_line(message);
END;
/

EXIT
