-- Create Email Table
CREATE TABLE Email (
    Id INT NOT NULL,
    Email VARCHAR(100) NOT NULL
);

-- Insert data into Email Table
INSERT INTO Email (Id, Email)
VALUES
    (1, 'john@example.com'),
    (2, 'bob@example.com'),
    (3, 'john@example.com');
