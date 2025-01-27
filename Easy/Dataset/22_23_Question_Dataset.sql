--drop table if exists Sales;
--drop table if exists Product;

-- Create the Sales table
CREATE TABLE Sales (
    sale_id INT,
    product_id INT,
    year INT,
    quantity INT,
    price DECIMAL(10, 2)
);

-- Insert data into the Sales table
INSERT INTO Sales (sale_id, product_id, year, quantity, price) VALUES
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 5000),
(7, 200, 2011, 15, 9000);
-----------------------------

-- Create the Product table
CREATE TABLE Product (
    product_id INT,
    product_name VARCHAR(50)
);

-- Insert data into the Product table
INSERT INTO Product (product_id, product_name) VALUES
(100, 'Nokia'),
(200, 'Apple'),
(300, 'Samsung');
