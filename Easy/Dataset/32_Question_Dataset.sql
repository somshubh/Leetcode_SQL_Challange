--drop table if exists Employee;
-- Create Employee Table
CREATE TABLE Employee (
    employee_id INT NOT NULL,
    team_id INT NOT NULL
);

-- Insert data into Employee Table
INSERT INTO Employee (employee_id, team_id)
VALUES
    (1, 8),
    (2, 8),
    (3, 8),
    (4, 7),
    (5, 9),
    (6, 9);
