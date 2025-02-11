CREATE TABLE Variables (
    name VARCHAR(10) PRIMARY KEY,
    value INT
);

INSERT INTO Variables (name, value) VALUES
('x', 66),
('y', 77);

--------------------------

CREATE TABLE Expressions (
    left_operand VARCHAR(10),
    operator VARCHAR(2),
    right_operand VARCHAR(10)
);

INSERT INTO Expressions (left_operand, operator, right_operand) VALUES
('x', '>', 'y'),
('x', '<', 'y'),
('x', '=', 'y'),
('y', '>', 'x'),
('y', '<', 'x'),
('x', '=', 'x');
