--DROP TABLE IF EXISTS Students;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL
);

-- Inserting data into the Students table
INSERT INTO Students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(13, 'John'),
(6, 'Alex');
------------------------------
CREATE TABLE Subjects (
    subject_name VARCHAR(50) PRIMARY KEY
);

-- Inserting data into the Subjects table
INSERT INTO Subjects (subject_name) VALUES
('Math'),
('Physics'),
('Programming');

--------------------------------
CREATE TABLE Examinations (
    student_id INT,
    subject_name VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_name) REFERENCES Subjects(subject_name)
);

-- Inserting data into the Examinations table
INSERT INTO Examinations (student_id, subject_name) VALUES
(1, 'Math'),
(1, 'Physics'),
(1, 'Programming'),
(2, 'Programming'),
(1, 'Physics'),
(1, 'Math'),
(13, 'Math'),
(13, 'Programming'),
(13, 'Physics'),
(2, 'Math'),
(1, 'Math');