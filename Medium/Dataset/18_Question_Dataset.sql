CREATE TABLE Student (
    student_id INT,
    student_name VARCHAR(50),
    gender CHAR(1),
    dept_id INT
);

INSERT INTO Student (student_id, student_name, gender, dept_id) VALUES
(1, 'Jack', 'M', 1),
(2, 'Jane', 'F', 1),
(3, 'Mark', 'M', 2);

---------------------------------

CREATE TABLE Department (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO Department (dept_id, dept_name) VALUES
(1, 'Engineering'),
(2, 'Science'),
(3, 'Law');
