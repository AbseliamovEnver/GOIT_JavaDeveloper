# Найти клиента (customer), который приносит меньше всего прибыли компании (company)
# для каждой из компаний .

CREATE TEMPORARY TABLE companies_customers
  SELECT
    companies.company_name  AS company,
    customers.customer_name AS customer,
    sum(cost)               AS profit
  FROM projects
    JOIN companies ON projects.company_id = companies.company_id
    JOIN customers ON projects.customer_id = customers.customer_id
  GROUP BY company, customer;

SELECT
  comp_cust.company,
  cust.customer_name,
  min(comp_cust.profit) AS profit
FROM companies_customers comp_cust
  JOIN projects p ON comp_cust.profit = p.cost
  JOIN customers cust ON p.customer_id = cust.customer_id
GROUP BY company;