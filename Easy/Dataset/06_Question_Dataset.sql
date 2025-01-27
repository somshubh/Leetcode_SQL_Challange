-- Create the 'salary' table
CREATE TABLE salary (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    sex CHAR(1),
    salary INT
);

-- Insert data into the 'salary' table
INSERT INTO salary (id, name, sex, salary) VALUES
(1, 'A', 'm', 2500),
(2, 'B', 'f', 1500),
(3, 'C', 'm', 5500),
(4, 'D', 'f', 500);

-- Verify the inserted data
SELECT * FROM salary;
