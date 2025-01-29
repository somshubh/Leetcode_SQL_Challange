--drop table if exists Employee;
-- Create Employee Table
CREATE TABLE Employee (
    Id INT NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Salary INT NOT NULL,
    ManagerId INT NULL
);

-- Insert data into Employee Table
INSERT INTO Employee (Id, Name, Salary, ManagerId)
VALUES
    (1, 'Joe', 70000, 3),
    (2, 'Henry', 80000, 4),
    (3, 'Sam', 60000, NULL),
    (4, 'Max', 90000, NULL);
