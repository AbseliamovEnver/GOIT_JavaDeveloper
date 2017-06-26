# Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль.
# The average developer`s salary in the cheapest project

SELECT
  AVG(salary)         AS average_salary,
  COUNT(developer_id) AS developer_id
FROM developers
WHERE developer_id IN (SELECT developer_id
                       FROM projects_developers
                       WHERE project_id IN (SELECT project_id
                                            FROM projects
                                            HAVING min(cost)));
