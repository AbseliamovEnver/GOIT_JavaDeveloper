# The most expensive project

SELECT project_name, SUM(developers.salary) AS cost
FROM projects, developers
WHERE projects.company_id = developers.company_id
GROUP BY developers.company_id
ORDER BY cost DESC
LIMIT 1;
