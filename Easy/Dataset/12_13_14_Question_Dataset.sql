CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    unit_price DECIMAL(10, 2)
);

INSERT INTO product (product_id, product_name, unit_price) VALUES
(1, 'S8', 1000),
(2, 'G4', 800),
(3, 'iPhone', 1400);

---------------------------------------

CREATE TABLE sales (
    seller_id INT,
    product_id INT,
    buyer_id INT,
    sale_date DATE,
    quantity INT,
    price DECIMAL(10, 2)
);

INSERT INTO sales (seller_id, product_id, buyer_id, sale_date, quantity, price) VALUES
(1, 1, 1, '2019-01-21', 2, 2000),
(1, 2, 2, '2019-02-17', 1, 800),
(2, 2, 3, '2019-06-02', 1, 800),
(3, 3, 4, '2019-05-13', 2, 2800);
