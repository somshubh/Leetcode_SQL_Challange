-- Create the 'ActorDirector' table
CREATE TABLE ActorDirector (
    actor_id INT,
    director_id INT,
    timestamp INT
);

-- Insert data into the 'ActorDirector' table
INSERT INTO ActorDirector (actor_id, director_id, timestamp) VALUES
(1, 1, 0),
(1, 1, 1),
(1, 1, 2),
(1, 2, 3),
(1, 2, 4),
(2, 1, 5),
(2, 1, 6);