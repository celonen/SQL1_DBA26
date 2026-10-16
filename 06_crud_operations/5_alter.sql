DESC system.students;

-- add a new column
ALTER TABLE students
ADD email VARCHAR2(100);

-- modify existing column
ALTER TABLE students
MODIFY major VARCHAR2(199);

-- add NOT NULL constraint
ALTER TABLE students
MODIFY email VARCHAR2(100) NOT NULL;


ALTER TABLE students
MODIFY major VARCHAR2(100) NOT NULL;

DESC system.students;

ALTER TABLE students DROP COLUMN email;
DESC system.students;
EXIT
