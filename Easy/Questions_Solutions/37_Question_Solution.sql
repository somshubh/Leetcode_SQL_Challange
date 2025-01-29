-- Question 37
-- Write a SQL query to delete all duplicate email entries in a table named Person, keeping only unique emails based on its smallest Id.

-- +----+------------------+
-- | Id | Email            |
-- +----+------------------+
-- | 1  | john@example.com |
-- | 2  | bob@example.com  |
-- | 3  | john@example.com |
-- +----+------------------+
-- Id is the primary key column for this table.
-- For example, after running your query, the above Person table should have the following rows:

-- +----+------------------+
-- | Id | Email            |
-- +----+------------------+
-- | 1  | john@example.com |
-- | 2  | bob@example.com  |
-- +----+------------------+

-- Solution
with cte as (
 select *,
 COUNT(*) over(PARTITION BY email) cnt
 from email
),
cte2 as(
 select *,
 ROW_NUMBER() over(PARTITION BY email order by cnt) r
 from cte
)
delete from email where id in (select id from cte2 where cnt> 1 and r > 1)
--select * from email;