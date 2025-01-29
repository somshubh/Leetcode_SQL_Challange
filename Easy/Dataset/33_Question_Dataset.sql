-- Create Customer Table
CREATE TABLE Customer (
    id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    referee_id INT NULL
);

-- Insert data into Customer Table
INSERT INTO Customer (id, name, referee_id)
VALUES
    (1, 'Will', NULL),
    (2, 'Jane', NULL),
    (3, 'Alex', 2),
    (4, 'Bill', NULL),
    (5, 'Zack', 1),
    (6, 'Mark', 2);
