-- Create the Activities table
CREATE TABLE Activities (
    sell_date DATE,
    product VARCHAR(50)
);

-- Insert the data into the Activities table
INSERT INTO Activities (sell_date, product)
VALUES 
('2020-05-30', 'Headphone'),
('2020-06-01', 'Pencil'),
('2020-06-02', 'Mask'),
('2020-05-30', 'Basketball'),
('2020-06-01', 'Bible'),
('2020-06-02', 'Mask'),
('2020-05-30', 'T-Shirt');
