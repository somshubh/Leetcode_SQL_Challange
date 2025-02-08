CREATE TABLE Person (
    id INT,
    name VARCHAR(50),
    phone_number VARCHAR(15)
);

INSERT INTO Person (id, name, phone_number) VALUES
(3, 'Jonathan', '051-1234567'),
(12, 'Elvis', '051-7654321'),
(1, 'Moncef', '212-1234567'),
(2, 'Maroua', '212-6523651'),
(7, 'Meir', '972-1234567'),
(9, 'Rachel', '972-0011100');

---------------------------------

CREATE TABLE Country (
    name VARCHAR(50),
    country_code VARCHAR(10)
);

INSERT INTO Country (name, country_code) VALUES
('Peru', '051'),
('Israel', '972'),
('Morocco', '212'),
('Germany', '049'),
('Ethiopia', '251');

----------------------------------

CREATE TABLE Calls (
    caller_id INT,
    callee_id INT,
    duration INT
);

INSERT INTO Calls (caller_id, callee_id, duration) VALUES
(1, 9, 33),
(2, 9, 4),
(1, 2, 59),
(3, 12, 102),
(3, 12, 330),
(12, 3, 5),
(7, 9, 13),
(7, 1, 3),
(9, 7, 1),
(1, 7, 7);
