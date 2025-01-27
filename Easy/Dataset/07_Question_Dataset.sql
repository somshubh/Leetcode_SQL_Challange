CREATE TABLE Departments (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Insert data into the Departments table
INSERT INTO Departments (id, name) VALUES
(1, 'Electrical Engineering'),
(7, 'Computer Engineering'),
(13, 'Bussiness Administration');
----------------------------------------
-- Create the Students table
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department_id INT
);

-- Insert data into the Students table
INSERT INTO Students (id, name, department_id) VALUES
(23, 'Alice', 1),
(1, 'Bob', 7),
(5, 'Jennifer', 13),
(2, 'John', 14),
(4, 'Jasmine', 77),
(3, 'Steve', 74),
(6, 'Luis', 1),
(8, 'Jonathan', 7),
(7, 'Daiana', 33),
(11, 'Madelynn', 1);