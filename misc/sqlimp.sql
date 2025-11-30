-- WINDOW FUNCTIONS

-- yt link : https://www.youtube.com/watch?v=Ww71knvhQ-s
-- yt playlist : https://www.youtube.com/watch?v=a-hFbr-4VQQ&list=PLavw5C92dz9Ef4E-1Zi9KfCTXS_IN8gXZ

-- if emp_id is given on basis of joining time (earlier->lower) then top 2 employees who joined earliest using row_number()
SELECT * FROM (
    SELECT e.*, 
    -- MAX(salary) over(PARTITION BY dept_name) AS max_salary 
    row_number() over(PARTITION BY dept_name ORDER BY emp_id) as rn
    FROM employee e
   ) x 
WHERE x.rn < 2;

-- top 3 earners in each dept using rank()
SELECT * FROM (
    SELECT e.*,
    rank() over(PARTITION BY dept_name ORDER BY salary DESC) as top_3_rankings
    FROM employee e
    ) rnk 
WHERE rnk.top_3_rankings < 4;


Bob Williams
David Lee
Henry Chen
Kevin Baker
Linda Rodriguez
Mike Thompson