-- Question 40
-- Table: Sessions

-- +---------------------+---------+
-- | Column Name         | Type    |
-- +---------------------+---------+
-- | session_id          | int     |
-- | duration            | int     |
-- +---------------------+---------+
-- session_id is the primary key for this table.
-- duration is the time in seconds that a user has visited the application.
 

-- You want to know how long a user visits your application. You decided to create bins of "[0-5>", "[5-10>", "[10-15>" and "15 minutes or more" and count the number of sessions on it.

-- Write an SQL query to report the (bin, total) in any order.

-- The query result format is in the following example.

-- Sessions table:
-- +-------------+---------------+
-- | session_id  | duration      |
-- +-------------+---------------+
-- | 1           | 30            |
-- | 2           | 199           |
-- | 3           | 299           |
-- | 4           | 580           |
-- | 5           | 1000          |
-- +-------------+---------------+

-- Result table:
-- +--------------+--------------+
-- | bin          | total        |
-- +--------------+--------------+
-- | [0-5>        | 3            |
-- | [5-10>       | 1            |
-- | [10-15>      | 0            |
-- | 15 or more   | 1            |
-- +--------------+--------------+

-- For session_id 1, 2 and 3 have a duration greater or equal than 0 minutes and less than 5 minutes.
-- For session_id 4 has a duration greater or equal than 5 minutes and less than 10 minutes.
-- There are no session with a duration greater or equial than 10 minutes and less than 15 minutes.
-- For session_id 5 has a duration greater or equal than 15 minutes.

-- Solution
with cte as(
select *,
case when duration/60 < 5 then '[0-5>'
     when duration/60 > 5 and duration/60 < 10 then '[5-10>'
	 when duration/60 > 10 and duration/60 < 15 then '[10-15>'
	 else '15 or More'
end as bin
from sessions 
),
bin_name as(
select '[0-5>' as bin
union all
select '[5-10>'
union all
select '[10-15>'
union all
select '15 or More'
),
count_bin as(
  select bin, COUNT(*) as cnt from cte group by bin
)
select bn.bin, isnull(cnt, 0)as total from bin_name bn left join count_bin c on bn.bin = c.bin;