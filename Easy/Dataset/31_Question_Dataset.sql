-- Create the friend_request table
CREATE TABLE friend_request (
    sender_id INT,
    send_to_id INT,
    request_date DATE
);

-- Insert the data into the friend_request table
INSERT INTO friend_request (sender_id, send_to_id, request_date)
VALUES 
(1, 2, '2016-06-01'),
(1, 3, '2016-06-01'),
(1, 4, '2016-06-01'),
(2, 3, '2016-06-02'),
(3, 4, '2016-06-09');

----------------------------------

-- Create the request_accepted table
CREATE TABLE request_accepted (
    requester_id INT,
    accepter_id INT,
    accept_date DATE
);

-- Insert the data into the request_accepted table
INSERT INTO request_accepted (requester_id, accepter_id, accept_date)
VALUES 
(1, 2, '2016-06-03'),
(1, 3, '2016-06-08'),
(2, 3, '2016-06-08'),
(3, 4, '2016-06-09'),
(3, 4, '2016-06-10');
