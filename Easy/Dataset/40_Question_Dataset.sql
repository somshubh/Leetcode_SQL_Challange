-- Create Sessions Table
CREATE TABLE Sessions (
    session_id INT NOT NULL,
    duration INT NOT NULL
);

-- Insert data into Sessions Table
INSERT INTO Sessions (session_id, duration)
VALUES
    (1, 30),
    (2, 199),
    (3, 299),
    (4, 580),
    (5, 1000);
