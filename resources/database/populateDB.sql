INSERT INTO companies (company_name) VALUES
  ('Epam'),
  ('SoftServe'),
  ('Ciclum'),
  ('Luxoft'),
  ('GlobalLogic');

INSERT INTO customers (customer_name) VALUES
  ('ProCredit Bank'),
  ('Best games'),
  ('Akkord Tour'),
  ('Mama Mia'),
  ('Karpaty'),
  ('Favorit sport');

INSERT INTO projects (project_name, customer_id, company_id) VALUES
  ('Online banking system', 1, 1),
  ('Poker club', 2, 2),
  ('Pari match', 6, 2),
  ('Android games', 2, 3),
  ('Smart house', 5, 4),
  ('Booking hotel', 3, 5),
  ('Pizzeria', 4, 1),
  ('Hotel Karpaty', 5, 3);

INSERT INTO developers (developer_name, company_id) VALUES
  ('Ivan Petrov', 1),
  ('Petr Ivanov', 2),
  ('Victoria Aleksandrova', 3),
  ('Anna Victorova', 4),
  ('Aleksandr Nikolaev', 5),
  ('Mihail Zaharov', 1),
  ('Zahar Mihailov', 2),
  ('Sidr Aleksandrov', 3),
  ('Natalia Petrova', 4),
  ('Nikolay Nikolaev', 5);

INSERT INTO skills (skill_name) VALUES
  ('Java'),
  ('C++'),
  ('C#'),
  ('Python'),
  ('MySQL'),
  ('HTML'),
  ('CSS'),
  ('JavaScript'),
  ('PHP'),
  ('Delphi');

INSERT INTO developers_skills (developer_id, skill_id) VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 5),
  (4, 6),
  (4, 7),
  (4, 8),
  (5, 1),
  (5, 2),
  (5, 10),
  (6, 8),
  (6, 9),
  (7, 5),
  (7, 1),
  (8, 3),
  (8, 6),
  (9, 7),
  (9, 5),
  (10, 2),
  (10, 3),
  (10, 5);

INSERT INTO projects_developers (project_id, developer_id) VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 4),
  (2, 5),
  (3, 6),
  (3, 7),
  (4, 1),
  (4, 8),
  (4, 9),
  (5, 5),
  (5, 7),
  (5, 10),
  (6, 9),
  (6, 2),
  (7, 3),
  (7, 6),
  (8, 4),
  (8, 8),
  (8, 10);

INSERT INTO companies_developers (company_id, developer_id) VALUE
  (1, 1),
  (2, 2),
  (3, 3);

INSERT INTO companies_projects (company_id, project_id) VALUE
  (1, 1),
  (2, 2),
  (3, 3);

INSERT INTO customers_companies (customer_id, company_id) VALUE
  (1, 1),
  (2, 2),
  (3, 3);

INSERT INTO customers_projects (customer_id, project_id) VALUE
  (1, 1),
  (2, 2),
  (3, 3);
