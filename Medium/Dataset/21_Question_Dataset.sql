CREATE TABLE Customer (
    customer_id INT,
    product_key INT
);

INSERT INTO Customer (customer_id, product_key) VALUES
(1, 5),
(2, 6),
(3, 5),
(3, 6),
(1, 6);

------------------

CREATE TABLE Product (
    product_key INT PRIMARY KEY
);

INSERT INTO Product (product_key) VALUES
(5),
(6);
