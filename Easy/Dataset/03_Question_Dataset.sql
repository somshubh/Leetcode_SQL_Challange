-- Drop the Activity table if it already exists

DROP TABLE if exists Activity;

-- Create the Activity table
CREATE TABLE Activity (
    user_id INT,
    session_id INT,
    activity_date DATE,
    activity_type NVARCHAR(50)
);

-- Insert data into the Activity table
INSERT INTO Activity (user_id, session_id, activity_date, activity_type)
VALUES
    (1, 1, '2019-07-20', 'open_session'),
    (1, 1, '2019-07-20', 'scroll_down'),
    (1, 1, '2019-07-20', 'end_session'),
    (2, 4, '2019-07-20', 'open_session'),
    (2, 4, '2019-07-21', 'send_message'),
    (2, 4, '2019-07-21', 'end_session'),
    (3, 2, '2019-07-21', 'open_session'),
    (3, 2, '2019-07-21', 'send_message'),
    (3, 2, '2019-07-21', 'end_session'),
    (3, 5, '2019-07-21', 'open_session'),
    (3, 5, '2019-07-21', 'scroll_down'),
    (3, 5, '2019-07-21', 'end_session'),
    (4, 3, '2019-06-25', 'open_session'),
    (4, 3, '2019-06-25', 'end_session');
