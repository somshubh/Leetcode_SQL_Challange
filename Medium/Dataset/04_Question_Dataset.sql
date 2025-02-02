-- Create the Teams table
CREATE TABLE Teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(100)
);

-- Insert data into the Teams table with one INSERT statement
INSERT INTO Teams (team_id, team_name) VALUES
    (10, 'Leetcode FC'),
    (20, 'NewYork FC'),
    (30, 'Atlanta FC'),
    (40, 'Chicago FC'),
    (50, 'Toronto FC');
--------------------------------------

-- Create the Matches table
CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    host_team INT,
    guest_team INT,
    host_goals INT,
    guest_goals INT,
    FOREIGN KEY (host_team) REFERENCES Teams(team_id),
    FOREIGN KEY (guest_team) REFERENCES Teams(team_id)
);

-- Insert data into the Matches table with one INSERT statement
INSERT INTO Matches (match_id, host_team, guest_team, host_goals, guest_goals) VALUES
    (1, 10, 20, 3, 0),
    (2, 30, 10, 2, 2),
    (3, 10, 50, 5, 1),
    (4, 20, 30, 1, 0),
    (5, 50, 30, 1, 0);