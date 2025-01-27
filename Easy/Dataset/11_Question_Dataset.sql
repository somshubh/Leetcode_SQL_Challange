CREATE TABLE salesperson (
    sales_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10, 2),
    commission_rate DECIMAL(5, 2),
    hire_date DATE
);

INSERT INTO salesperson (sales_id, name, salary, commission_rate, hire_date) VALUES
(1, 'John', 100000, 6, '2006-04-01'),
(2, 'Amy', 120000, 5, '2010-05-01'),
(3, 'Mark', 65000, 12, '2008-12-25'),
(4, 'Pam', 25000, 25, '2005-01-01'),
(5, 'Alex', 50000, 10, '2007-02-03');

----------------------------------------

CREATE TABLE company (
    com_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO company (com_id, name, city) VALUES
(1, 'RED', 'Boston'),
(2, 'ORANGE', 'New York'),
(3, 'YELLOW', 'Boston'),
(4, 'GREEN', 'Austin');

------------------------------------------
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    com_id INT,
    sales_id INT,
    amount DECIMAL(10, 2),
    FOREIGN KEY (com_id) REFERENCES company(com_id),
    FOREIGN KEY (sales_id) REFERENCES salesperson(sales_id)
);

INSERT INTO orders (order_id, order_date, com_id, sales_id, amount) VALUES
(1, '2014-01-01', 3, 4, 100000),
(2, '2014-02-01', 4, 5, 5000),
(3, '2014-03-01', 1, 1, 50000),
(4, '2014-04-01', 1, 4, 25000);
