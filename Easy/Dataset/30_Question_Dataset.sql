-- Create the TVProgram table
CREATE TABLE TVProgram (
    program_date DATETIME,
    content_id INT,
    channel VARCHAR(50)
);

-- Insert the data into the TVProgram table
INSERT INTO TVProgram (program_date, content_id, channel)
VALUES 
('2020-06-10 08:00', 1, 'LC-Channel'),
('2020-05-11 12:00', 2, 'LC-Channel'),
('2020-05-12 12:00', 3, 'LC-Channel'),
('2020-05-13 14:00', 4, 'Disney Ch'),
('2020-06-18 14:00', 4, 'Disney Ch'),
('2020-07-15 16:00', 5, 'Disney Ch');

------------------------------------------
-- Create the Content table
CREATE TABLE Content (
    content_id INT,
    title VARCHAR(100),
    Kids_content CHAR(1),
    content_type VARCHAR(50)
);

-- Insert the data into the Content table
INSERT INTO Content (content_id, title, Kids_content, content_type)
VALUES 
(1, 'Leetcode Movie', 'N', 'Movies'),
(2, 'Alg. for Kids', 'Y', 'Series'),
(3, 'Database Sols', 'N', 'Series'),
(4, 'Aladdin', 'Y', 'Movies'),
(5, 'Cinderella', 'Y', 'Movies');
