-- Create the Queries table
CREATE TABLE Queries (
    query_name VARCHAR(50),
    result VARCHAR(50),
    position INT,
    rating INT
);

-- Insert data into the Queries table
INSERT INTO Queries (query_name, result, position, rating) VALUES
('Dog', 'Golden Retriever', 1, 5),
('Dog', 'German Shepherd', 2, 5),
('Dog', 'Mule', 200, 1),
('Cat', 'Shirazi', 5, 2),
('Cat', 'Siamese', 3, 3),
('Cat', 'Sphynx', 7, 4);
