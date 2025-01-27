-- Drop table if exists Department;

-- Create the Department table
CREATE TABLE Department (
    id INT,
    revenue INT NOT NULL,
    month VARCHAR(10) NOT NULL
);

-- Insert data into the Department table
INSERT INTO Department (id, revenue, month) VALUES
(1, 8000, 'Jan'),
(2, 9000, 'Jan'),
(3, 10000, 'Feb'),
(1, 7000, 'Feb'),
(1, 6000, 'Mar');

