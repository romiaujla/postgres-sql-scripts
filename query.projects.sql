-- 
-- SELECT 
--     d.id,
--     d.dept_name,
--     e.emp_name,
--     e.phone, 
--     e.title,
--     e.salary
-- FROM 
--     department d 
--     JOIN 
--     employee e
--     ON d.manager = e.id;


-- query that lists the departments and their managers.
-- SELECT 
--     d.id,
--     d.dept_name as Department,
--     e.emp_name as Manager_Name
-- FROM
--     department d
--     RIGHT JOIN
--     employee e
--     ON d.manager = e.id;


-- -- query to list the names, salaries and departments of all employees
-- SELECT 
--     e.emp_name as Employee_Name,
--     e.salary as Salary,
--     d.dept_name as Department
-- FROM 
--     employee e
--     INNER JOIN
--     department d
--     ON e.department = d.id
-- WHERE
--     d.dept_name = 'Sales';


-- -- list employee name and project name that the employee is assigned to
-- SELECT
--     e.emp_name as Employee_Name,
--     p.project_name as Project_Name
-- FROM 
--     employee e
--     JOIN
--     employee_project ep
--     ON e.id = ep.emp_id
--     JOIN
--     project p
--     ON p.id = ep.project_id;

-- 