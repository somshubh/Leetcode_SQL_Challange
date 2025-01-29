-- Create Seats Table
CREATE TABLE Seats (
    seat_id INT NOT NULL,
    free INT NOT NULL
);

-- Insert data into Seats Table
INSERT INTO Seats (seat_id, free)
VALUES
    (1, 1),
    (2, 0),
    (3, 1),
    (4, 1),
    (5, 1);
