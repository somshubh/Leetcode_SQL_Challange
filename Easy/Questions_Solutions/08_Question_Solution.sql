-- Question 8
-- Table: Students

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | student_id    | int     |
-- | student_name  | varchar |
-- +---------------+---------+
-- student_id is the primary key for this table.
-- Each row of this table contains the ID and the name of one student in the school.
 

-- Table: Subjects

-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | subject_name | varchar |
-- +--------------+---------+
-- subject_name is the primary key for this table.
-- Each row of this table contains the name of one subject in the school.
 

-- Table: Examinations

-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | student_id   | int     |
-- | subject_name | varchar |
-- +--------------+---------+
-- There is no primary key for this table. It may contain duplicates.
-- Each student from the Students table takes every course from Subjects table.
-- Each row of this table indicates that a student with ID student_id attended the exam of subject_name.
 

-- Write an SQL query to find the number of times each student attended each exam.

-- Order the result table by student_id and subject_name.

-- The query result format is in the following example:

-- Students table:
-- +------------+--------------+
-- | student_id | student_name |
-- +------------+--------------+
-- | 1          | Alice        |
-- | 2          | Bob          |
-- | 13         | John         |
-- | 6          | Alex         |
-- +------------+--------------+
-- Subjects table:
-- +--------------+
-- | subject_name |
-- +--------------+
-- | Math         |
-- | Physics      |
-- | Programming  |
-- +--------------+
-- Examinations table:
-- +------------+--------------+
-- | student_id | subject_name |
-- +------------+--------------+
-- | 1          | Math         |
-- | 1          | Physics      |
-- | 1          | Programming  |
-- | 2          | Programming  |
-- | 1          | Physics      |
-- | 1          | Math         |
-- | 13         | Math         |
-- | 13         | Programming  |
-- | 13         | Physics      |
-- | 2          | Math         |
-- | 1          | Math         |
-- +------------+--------------+
-- Result table:
-- +------------+--------------+--------------+----------------+
-- | student_id | student_name | subject_name | attended_exams |
-- +------------+--------------+--------------+----------------+
-- | 1          | Alice        | Math         | 3              |
-- | 1          | Alice        | Physics      | 2              |
-- | 1          | Alice        | Programming  | 1              |
-- | 2          | Bob          | Math         | 1              |
-- | 2          | Bob          | Physics      | 0              |
-- | 2          | Bob          | Programming  | 1              |
-- | 6          | Alex         | Math         | 0              |
-- | 6          | Alex         | Physics      | 0              |
-- | 6          | Alex         | Programming  | 0              |
-- | 13         | John         | Math         | 1              |
-- | 13         | John         | Physics      | 1              |
-- | 13         | John         | Programming  | 1              |
-- +------------+--------------+--------------+----------------+
-- The result table should contain all students and all subjects.
-- Alice attended Math exam 3 times, Physics exam 2 times and Programming exam 1 time.
-- Bob attended Math exam 1 time, Programming exam 1 time and didn't attend the Physics exam.
-- Alex didn't attend any exam.
-- John attended Math exam 1 time, Physics exam 1 time and Programming exam 1 time.

--Solution
with cte1 as(
Select s.student_id, s.student_name, e.subject_name, count(*) as exam_attend from students s join examinations e on s.student_id = e.student_id
group by s.student_id, s.student_name, e.subject_name
),
cte2 as(
select * from students s cross join subjects su
--group by s.student_id, s.student_name, su.subject_name
)
select c2.student_id, c2.student_name, c2.subject_name, coalesce(exam_attend, 0)  from cte2 c2 left join cte1 c1 
on c2.student_id = c1.student_id and c2.subject_name = c1.subject_name
order by 1,2;
