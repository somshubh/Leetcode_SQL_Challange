CREATE TABLE Actions (
    user_id INT,
    post_id INT,
    action_date DATE,
    action VARCHAR(50),
    extra VARCHAR(50),
    PRIMARY KEY (user_id, post_id, action_date, action)
);

INSERT INTO Actions (user_id, post_id, action_date, action, extra) VALUES
(1, 1, '2019-07-01', 'view', NULL),
(1, 1, '2019-07-01', 'like', NULL),
(1, 1, '2019-07-01', 'share', NULL),
(2, 4, '2019-07-04', 'view', NULL),
(2, 4, '2019-07-04', 'report', 'spam'),
(3, 4, '2019-07-04', 'view', NULL),
(3, 4, '2019-07-04', 'report', 'spam'),
(4, 3, '2019-07-02', 'view', NULL),
(4, 3, '2019-07-02', 'report', 'spam'),
(5, 2, '2019-07-04', 'view', NULL),
(5, 2, '2019-07-04', 'report', 'racism'),
(5, 5, '2019-07-04', 'view', NULL),
(5, 5, '2019-07-04', 'report', 'racism');