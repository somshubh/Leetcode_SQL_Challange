CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO Employees (id, name) VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

-----------------------------
-- Create the EmployeeUNI table
CREATE TABLE EmployeeUNI (
    id INT PRIMARY KEY,
    unique_id INT NOT NULL
);

-- Insert data into the EmployeeUNI table
INSERT INTO EmployeeUNI (id, unique_id) VALUES
(3, 1),
(11, 2),
(90, 3);