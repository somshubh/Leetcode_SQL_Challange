CREATE TABLE Friends (
    id INT,
    name VARCHAR(50),
    activity VARCHAR(20)
);

INSERT INTO Friends (id, name, activity) VALUES
(1, 'Jonathan D.', 'Eating'),
(2, 'Jade W.', 'Singing'),
(3, 'Victor J.', 'Singing'),
(4, 'Elvis Q.', 'Eating'),
(5, 'Daniel A.', 'Eating'),
(6, 'Bob B.', 'Horse Riding');

----------------------------------

CREATE TABLE Activities (
    id INT,
    name VARCHAR(50)
);

INSERT INTO Activities (id, name) VALUES
(1, 'Eating'),
(2, 'Singing'),
(3, 'Horse Riding');