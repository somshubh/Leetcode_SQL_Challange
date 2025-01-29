--drop table if exists Employee;
-- Create Employee Table
CREATE TABLE Employee (
    empId INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    supervisor INT NULL,
    salary INT NOT NULL
);

-- Insert data into Employee Table
INSERT INTO Employee (empId, name, supervisor, salary)
VALUES
    (1, 'John', 3, 1000),
    (2, 'Dan', 3, 2000),
    (3, 'Brad', NULL, 4000),
    (4, 'Thomas', 3, 4000);

---------------------------------

-- Create Bonus Table
CREATE TABLE Bonus (
    empId INT NOT NULL,
    bonus INT NOT NULL
);

-- Insert data into Bonus Table
INSERT INTO Bonus (empId, bonus)
VALUES
    (2, 500),
    (4, 2000);
