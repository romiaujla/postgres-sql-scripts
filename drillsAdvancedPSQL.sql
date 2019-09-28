-- How many people work in the Sales department?
-- SELECT 
--     COUNT(e.id)
-- FROM 
--     employee e
--     JOIN 
--     department d
--     ON e.department = d.id
-- WHERE
--     d.dept_name = 'Sales';



-- List the names of all employees assigned to the 'Plan Christmas party' project.
SELECT 
    e.emp_name AS Employee_name,
    p.project_name AS Project_name
FROM
    employee e
    JOIN
    employee_project ep
    ON e.id = ep.emp_id
    JOIN 
    project p
    ON p.id = ep.project_id
WHERE
    LOWER(p.project_name) = 'plan christmas party';



-- List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.




-- Which projects are the Sales department employees assigned to?
-- List only the managers that are assigned to the 'Watch paint dry' project.