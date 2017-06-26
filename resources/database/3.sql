# Find total salary for Java developers

SELECT SUM(developers.salary) AS salaryJavaDevelopers
FROM developers, skills, developers_skills
WHERE developers.developer_id = developers_skills.developer_id
      AND skills.skill_id = developers_skills.skill_id
      AND skills.skill_name LIKE 'Java'
GROUP BY skill_name;