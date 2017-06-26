CREATE DATABASE IF NOT EXISTS outsourcing
  DEFAULT CHARSET utf8;

USE outsourcing;

CREATE TABLE IF NOT EXISTS companies (
  company_id   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  company_name VARCHAR(75) UNIQUE NOT NULL
);
# ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS customers (
  customer_id   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(75) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS projects (
  project_id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  project_name     VARCHAR(75) UNIQUE NOT NULL,
  customer_id INT UNSIGNED NOT NULL,
  company_id  INT UNSIGNED NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
  FOREIGN KEY (company_id) REFERENCES companies (company_id)
);

CREATE TABLE IF NOT EXISTS developers (
  developer_id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  developer_name    VARCHAR(75) UNIQUE NOT NULL,
  company_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (company_id) REFERENCES companies (company_id)
);

CREATE TABLE IF NOT EXISTS skills (
  skill_id   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  skill_name VARCHAR(45) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS developers_skills (
  developer_id INT UNSIGNED NOT NULL,
  skill_id     INT UNSIGNED NOT NULL,
  PRIMARY KEY (developer_id, skill_id),
  FOREIGN KEY (developer_id) REFERENCES developers (developer_id),
  FOREIGN KEY (skill_id) REFERENCES skills (skill_id)
);

CREATE TABLE IF NOT EXISTS projects_developers (
  project_id   INT UNSIGNED NOT NULL,
  developer_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (project_id, developer_id),
  FOREIGN KEY (project_id) REFERENCES projects (project_id),
  FOREIGN KEY (developer_id) REFERENCES developers (developer_id)
);

CREATE TABLE IF NOT EXISTS companies_developers (
  company_id   INT UNSIGNED NOT NULL,
  developer_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (company_id, developer_id),
  FOREIGN KEY (company_id) REFERENCES companies (company_id),
  FOREIGN KEY (developer_id) REFERENCES developers (developer_id)
);

CREATE TABLE IF NOT EXISTS companies_projects (
  company_id INT UNSIGNED NOT NULL,
  project_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (company_id, project_id),
  FOREIGN KEY (company_id) REFERENCES companies (company_id),
  FOREIGN KEY (project_id) REFERENCES projects (project_id)
);

CREATE TABLE IF NOT EXISTS customers_companies (
  customer_id INT UNSIGNED NOT NULL,
  company_id  INT UNSIGNED NOT NULL,
  PRIMARY KEY (customer_id, company_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
  FOREIGN KEY (company_id) REFERENCES companies (company_id)
);

CREATE TABLE IF NOT EXISTS customers_projects (
  customer_id INT UNSIGNED NOT NULL,
  project_id  INT UNSIGNED NOT NULL,
  PRIMARY KEY (customer_id, project_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
  FOREIGN KEY (project_id) REFERENCES projects (project_id)
);
