-- Question 17
-- Write a SQL query to find all numbers that appear at least three times consecutively.

-- +----+-----+
-- | Id | Num |
-- +----+-----+
-- | 1  |  1  |
-- | 2  |  1  |
-- | 3  |  1  |
-- | 4  |  2  |
-- | 5  |  1  |
-- | 6  |  2  |
-- | 7  |  2  |
-- +----+-----+
-- For example, given the above Logs table, 1 is the only number that appears consecutively for at least three times.

-- +-----------------+
-- | ConsecutiveNums |
-- +-----------------+
-- | 1               |
-- +-----------------+

-- Solution
with consecutive as(
 select *,
 LEAD(num,1) over(Order by id) as num1,
 LEAD(num,2) over(Order by id) as num2
 from num
)
select num as consecutiveNums from consecutive where (num = num1) and(num2 = num1) and (num2 = num);