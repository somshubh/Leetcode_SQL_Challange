CREATE TABLE Accounts (
    id INT,
    name VARCHAR(20)
);

INSERT INTO Accounts (id, name) VALUES
(1, 'Winston'),
(7, 'Jonathan');

-----------------------------

CREATE TABLE Logins (
    id INT,
    login_date DATE
);

INSERT INTO Logins (id, login_date) VALUES
(7, '2020-05-30'),
(1, '2020-05-30'),
(7, '2020-05-31'),
(7, '2020-06-01'),
(7, '2020-06-02'),
(7, '2020-06-02'),
(7, '2020-06-03'),
(1, '2020-06-07'),
(7, '2020-06-10');
