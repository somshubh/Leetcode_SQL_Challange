-- drop table if exists customers;
CREATE TABLE Customers (
    customer_id INT,
    customer_name VARCHAR(50)
);

INSERT INTO Customers (customer_id, customer_name) VALUES
(1, 'Daniel'),
(2, 'Diana'),
(3, 'Elizabeth'),
(4, 'Jhon');
------------------------------
-- drop table if exists orders;
CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    product_name VARCHAR(50)
);

INSERT INTO Orders (order_id, customer_id, product_name) VALUES
(10, 1, 'A'),
(20, 1, 'B'),
(30, 1, 'D'),
(40, 1, 'C'),
(50, 2, 'A'),
(60, 3, 'A'),
(70, 3, 'B'),
(80, 3, 'D'),
(90, 4, 'C');