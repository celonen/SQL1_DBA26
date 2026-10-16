DROP TABLE students;

-- if there is foreign key relationships then use cascade
DROP TABLE students CASCADE CONSTRAINTS;

-- if you are not using system user then use PURGE to permanently drop table
