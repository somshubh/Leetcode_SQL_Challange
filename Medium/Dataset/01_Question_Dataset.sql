-- Create the Vote table
CREATE TABLE Vote (
    id INT PRIMARY KEY,
    CandidateId INT
);

-- Insert data into the Vote table
INSERT INTO Vote (id, CandidateId) VALUES (1, 2);
INSERT INTO Vote (id, CandidateId) VALUES (2, 4);
INSERT INTO Vote (id, CandidateId) VALUES (3, 3);
INSERT INTO Vote (id, CandidateId) VALUES (4, 2);
INSERT INTO Vote (id, CandidateId) VALUES (5, 5);

-----------------------------

-- Create the Candidate table
CREATE TABLE Candidate (
    id INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Insert data into the Candidate table
INSERT INTO Candidate (id, Name) VALUES (1, 'A');
INSERT INTO Candidate (id, Name) VALUES (2, 'B');
INSERT INTO Candidate (id, Name) VALUES (3, 'C');
INSERT INTO Candidate (id, Name) VALUES (4, 'D');
INSERT INTO Candidate (id, Name) VALUES (5, 'E');