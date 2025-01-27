-- Create the Project table
CREATE TABLE Project (
    project_id INT,
    employee_id INT
);

-- Insert data into the Project table
INSERT INTO Project (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);

------------------------
-- Create the Employee table
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    experience_years INT
);

-- Insert data into the Employee table
INSERT INTO Employee (employee_id, name, experience_years) VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 1),
(4, 'Doe', 2);