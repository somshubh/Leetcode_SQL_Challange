--drop table if exists Weather;

CREATE TABLE Weather (
    Id INT PRIMARY KEY,
    RecordDate DATE,
    Temperature INT
);

INSERT INTO Weather (Id, RecordDate, Temperature) VALUES
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);
