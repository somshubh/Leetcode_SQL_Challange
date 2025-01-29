-- Create Person Table
CREATE TABLE Person (
    Id INT NOT NULL,
    Email VARCHAR(100) NOT NULL
);

-- Insert data into Person Table
INSERT INTO Person (Id, Email)
VALUES
    (1, 'a@b.com'),
    (2, 'c@d.com'),
    (3, 'a@b.com');
