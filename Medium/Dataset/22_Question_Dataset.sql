--drop table if exists employee;

CREATE TABLE Employee (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT,
    DepartmentId INT
);

INSERT INTO Employee (Id, Name, Salary, DepartmentId) VALUES
(1, 'Joe', 70000, 1),
(2, 'Jim', 90000, 1),
(3, 'Henry', 80000, 2),
(4, 'Sam', 60000, 2),
(5, 'Max', 90000, 1);

SELECT * FROM Employee;

------------------------------------
--drop table if exists department;
CREATE TABLE Department (
    Id INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Department (Id, Name) VALUES
(1, 'IT'),
(2, 'Sales');

SELECT * FROM Department;
