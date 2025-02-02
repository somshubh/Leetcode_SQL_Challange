CREATE TABLE Node (
    id INT PRIMARY KEY,
    p_id INT,
    FOREIGN KEY (p_id) REFERENCES Node(id)
);

-- Insert data into the Node table with one INSERT statement
INSERT INTO Node (id, p_id) VALUES
    (1, NULL),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2);