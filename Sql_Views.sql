--Create a view that will extract the average salary of all managers registered in the database. Round this value to the nearest cent.

CREATE OR REPLACE VIEW v_avg_mgr_salary AS
    SELECT 
       AVG(s.salary) AS average_salary
    FROM
        salaries s
            JOIN
         dept_manager m ON s.emp_no = m.emp_no;
