CREATE TABLE FollowRelationships (
    followee VARCHAR(50),
    follower VARCHAR(50)
);

INSERT INTO FollowRelationships (followee, follower)
VALUES
('A', 'B'),
('B', 'C'),
('B', 'D'),
('D', 'E');
