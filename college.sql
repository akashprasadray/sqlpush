CREATE DATABASE IF NOT EXISTS college;
USE college;

-- CREATE TABLE
CREATE TABLE student(
roll_no INT PRIMARY KEY,
name VARCHAR(50),
marks INT 
);

-- INSERTING DATA INTO TABLE 
INSERT INTO student 
VALUES
(1, "akash", 70),
(2, "anish", 80);

-- RETRIEVEING THE DATA
SELECT * FROM student;
SELECT * FROM student WHERE marks>60;