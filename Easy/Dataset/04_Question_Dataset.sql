-- Create the 'triangle' table
CREATE TABLE triangle (
    x INT,
    y INT,
    z INT
);

-- Insert data into the 'triangle' table
INSERT INTO triangle (x, y, z) VALUES
(13, 15, 30),
(10, 20, 15);

-- Verify the inserted data
SELECT * FROM triangle;
