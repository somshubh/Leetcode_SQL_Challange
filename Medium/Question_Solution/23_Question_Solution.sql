-- Question 23
-- Table Variables:

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | name          | varchar |
-- | value         | int     |
-- +---------------+---------+
-- name is the primary key for this table.
-- This table contains the stored variables and their values.
 

-- Table Expressions:

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | left_operand  | varchar |
-- | operator      | enum    |
-- | right_operand | varchar |
-- +---------------+---------+
-- (left_operand, operator, right_operand) is the primary key for this table.
-- This table contains a boolean expression that should be evaluated.
-- operator is an enum that takes one of the values ('<', '>', '=')
-- The values of left_operand and right_operand are guaranteed to be in the Variables table.
 

-- Write an SQL query to evaluate the boolean expressions in Expressions table.

-- Return the result table in any order.

-- The query result format is in the following example.

-- Variables table:
-- +------+-------+
-- | name | value |
-- +------+-------+
-- | x    | 66    |
-- | y    | 77    |
-- +------+-------+

-- Expressions table:
-- +--------------+----------+---------------+
-- | left_operand | operator | right_operand |
-- +--------------+----------+---------------+
-- | x            | >        | y             |
-- | x            | <        | y             |
-- | x            | =        | y             |
-- | y            | >        | x             |
-- | y            | <        | x             |
-- | x            | =        | x             |
-- +--------------+----------+---------------+

-- Result table:
-- +--------------+----------+---------------+-------+
-- | left_operand | operator | right_operand | value |
-- +--------------+----------+---------------+-------+
-- | x            | >        | y             | false |
-- | x            | <        | y             | true  |
-- | x            | =        | y             | false |
-- | y            | >        | x             | true  |
-- | y            | <        | x             | false |
-- | x            | =        | x             | true  |
-- +--------------+----------+---------------+-------+
-- As shown, you need find the value of each boolean exprssion in the table using the variables table.

-- Solution

declare @x as int,
        @y as int;
set @x = 66;
set @y = 77;

with cte as(
select '>' operator, 'x' left_operand, 'y' right_operand, case when @x > @y then 'true' else 'false' end as value from Expressions
union
select '<' operator,'x' left_operand, 'y' right_operand, case when @x < @y then 'true' else 'false' end as value from Expressions
union
select '=' operator, 'x' left_operand, 'y' right_operand,case when @x = @y then 'true' else 'false' end as value from Expressions
union
select '>' operator,'y' left_operand, 'x' right_operand, case when @y > @x then 'true' else 'false' end as value from Expressions
union
select '<' operator,'y' left_operand, 'x' right_operand, case when @y < @x then 'true' else 'false' end as value from Expressions
union
select '=' operator, 'x' left_operand, 'x' right_operand, case when @x = @x then 'true' else 'false' end as value from Expressions
)
select left_operand, operator, right_operand, value from cte order by 1;