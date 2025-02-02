-- Create the Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    name VARCHAR(100),
    available_from DATE
);

-- Insert data into the Books table with one INSERT statement
INSERT INTO Books (book_id, name, available_from) VALUES
    (1, 'Kalila And Demna', '2010-01-01'),
    (2, '28 Letters', '2012-05-12'),
    (3, 'The Hobbit', '2019-06-10'),
    (4, '13 Reasons Why', '2019-06-01'),
    (5, 'The Hunger Games', '2008-09-21');

------------------------------------------
-- drop table if exists orders;
-- Create the Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    book_id INT,
    quantity INT,
    dispatch_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Insert data into the Orders table with one INSERT statement
INSERT INTO Orders (order_id, book_id, quantity, dispatch_date) VALUES
    (1, 1, 2, '2018-07-26'),
    (2, 1, 1, '2018-11-05'),
    (3, 3, 8, '2019-06-11'),
    (4, 4, 6, '2019-06-05'),
    (5, 4, 5, '2019-06-20'),
    (6, 5, 9, '2009-02-02'),
    (7, 5, 8, '2010-04-13');