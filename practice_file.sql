USE college;
-- CREATING A TABLE FOR CUSTOMERS INFORMATION
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
name VARCHAR(50),
mode VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO customers
VALUES
(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Ethan Sindair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donovan", "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orieans"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

SELECT mode, COUNT(customer_id) FROM customers
GROUP BY mode ORDER BY mode ASC;
SELECT mode, COUNT(name) FROM customers
GROUP BY mode ORDER BY COUNT(customer_id) DESC;

-- CREATING TABLE STUDENT
CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
marks INT,
grade VARCHAR(2),
city VARCHAR(20)
);

-- INSERT INTO students TABLE
INSERT INTO students
(student_id,name,marks,grade,city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(106, "emanuel", 12, "F", "Delhi");

SELECT grade, COUNT(grade) FROM students
GROUP BY grade ORDER BY grade DESC;

-- HAVING clause
SELECT city, COUNT(student_id) 
FROM students
GROUP BY city
HAVING MAX(marks)>90;

SET SQL_SAFE_UPDATES = 0;
UPDATE students
SET grade="0"
WHERE grade="A";

SELECT grade FROM students;


CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(20)
);

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

USE college;
SHOW tables;
SHOW DATABASES;
SELECT * FROM students;

SET SQL_SAFE_UPDATES=0;
UPDATE students
SET name="anjani";
SELECT name FROM students;

DELETE FROM students
WHERE student_id="101";



UPDATE students
SET city="kathmandu"
WHERE city="mumbai";

INSERT INTO students
VALUES
(108,"akash",89,"A","Butwal");

DELETE FROM students
WHERE student_id=108;

-- ALTER EXAMPLES 
ALTER TABLE students
ADD COLUMN age INT;

SELECT * FROM student;

ALTER TABLE student
CHANGE COLUMN age birth INT NOT NULL;

ALTER TABLE students
DROP COLUMN age;

UPDATE student
SET age=21
WHERE student_id=103;

ALTER TABLE students
RENAME TO student;

ALTER TABLE student
CHANGE COLUMN age birth INT;












