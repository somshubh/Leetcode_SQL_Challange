-- Drop table if exists orders;

-- Create Orders Table
CREATE TABLE Orders (
    order_number INT NOT NULL,
    customer_number INT NOT NULL,
    order_date DATE NOT NULL,
    required_date DATE NOT NULL,
    shipped_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    comment TEXT
);

-- Insert data into Orders Table
INSERT INTO Orders (order_number, customer_number, order_date, required_date, shipped_date, status, comment)
VALUES
    (1, 1, '2017-04-09', '2017-04-13', '2017-04-12', 'Closed', ''),
    (2, 2, '2017-04-15', '2017-04-20', '2017-04-18', 'Closed', ''),
    (3, 3, '2017-04-16', '2017-04-25', '2017-04-20', 'Closed', ''),
    (4, 3, '2017-04-18', '2017-04-28', '2017-04-25', 'Closed', '');
