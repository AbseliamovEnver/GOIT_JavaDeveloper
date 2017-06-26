# Create cost column in project table

ALTER TABLE projects ADD COLUMN cost BIGINT (15);

# Fill column "cost" in project table

UPDATE projects SET cost = 20000 WHERE project_id = 1;
UPDATE projects SET cost = 25000 WHERE project_id = 2;
UPDATE projects SET cost = 35000 WHERE project_id = 3;
UPDATE projects SET cost = 10000 WHERE project_id = 4;
UPDATE projects SET cost = 15000 WHERE project_id = 5;
UPDATE projects SET cost = 12000 WHERE project_id = 6;
UPDATE projects SET cost = 23000 WHERE project_id = 7;
UPDATE projects SET cost = 18000 WHERE project_id = 8;
