-- Create the Movies table
CREATE TABLE Movies (
    id INT,
    movie VARCHAR(50),
    description VARCHAR(100),
    rating DECIMAL(3, 1)
);

-- Insert data into the Movies table
INSERT INTO Movies (id, movie, description, rating) VALUES
(1, 'War', 'great 3D', 8.9),
(2, 'Science', 'fiction', 8.5),
(3, 'irish', 'boring', 6.2),
(4, 'Ice song', 'Fantacy', 8.6),
(5, 'House card', 'Interesting', 9.1);
