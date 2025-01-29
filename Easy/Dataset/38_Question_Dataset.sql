--Drop table if exists Customers;
-- Create Customers Table
CREATE TABLE Customers (
    Id INT NOT NULL,
    Name VARCHAR(50) NOT NULL
);

-- Insert data into Customers Table
INSERT INTO Customers (Id, Name)
VALUES
    (1, 'Joe'),
    (2, 'Henry'),
    (3, 'Sam'),
    (4, 'Max');
	
-----------------------------
-- Create Orders Table
CREATE TABLE Orders (
    Id INT NOT NULL,
    CustomerId INT NOT NULL
);

-- Insert data into Orders Table
INSERT INTO Orders (Id, CustomerId)
VALUES
    (1, 3),
    (2, 1);

