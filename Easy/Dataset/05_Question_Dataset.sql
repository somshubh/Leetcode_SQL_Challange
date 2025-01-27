-- Create the 'users' table
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert data into the 'users' table
INSERT INTO users (id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Alex'),
(4, 'Donald'),
(7, 'Lee'),
(13, 'Jonathan'),
(19, 'Elvis');

-- Verify the inserted data
SELECT * FROM users;
--------------------------------------

-- Create the 'rides' table
CREATE TABLE rides (
    id INT PRIMARY KEY,
    user_id INT,
    distance INT
);

-- Insert data into the 'rides' table
INSERT INTO rides (id, user_id, distance) VALUES
(1, 1, 120),
(2, 2, 317),
(3, 3, 222),
(4, 7, 100),
(5, 13, 312),
(6, 19, 50),
(7, 7, 120),
(8, 19, 400),
(9, 7, 230);

-- Verify the inserted data
SELECT * FROM rides;
