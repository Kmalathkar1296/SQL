CREATE TABLE student (
student_id INT AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
major VARCHAR(20) DEFAULT "College",
PRIMARY KEY (student_id)
);

DESCRIBE student;
SELECT * FROM student;
DROP TABLE student;
DELETE FROM student;

ALTER TABLE student ADD gpa DECIMAL(3,2);
ALTER TABLE student DROP gpa;

INSERT INTO student(name,major) VALUES('Jack', 'Biology');
INSERT INTO student(name,major) VALUES('Kate', 'Sociology');
INSERT INTO student(name) VALUES('Claire');
INSERT INTO student(name,major) VALUES('Mike', 'Computer Science');

UPDATE student SET major='Chemistry' where student_id = 3;
UPDATE student SET name='Karan', major = "undecided" where student_id = 1;

SELECT student.name, student.major from student ORDER BY major DESC;
SELECT * from student ORDER BY student_id DESC LIMIT 2;
SELECT * FROM student WHERE major <> 'Computer Science';
SELECT * FROM student WHERE name IN('Jack','Kate');