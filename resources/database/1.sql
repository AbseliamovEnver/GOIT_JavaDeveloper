# Add salary column

ALTER TABLE developers ADD salary REAL UNSIGNED NOT NULL;

UPDATE developers SET salary = 2000 WHERE developer_id = 1;
UPDATE developers SET salary = 2500 WHERE developer_id = 2;
UPDATE developers SET salary = 3500 WHERE developer_id = 3;
UPDATE developers SET salary = 1000 WHERE developer_id = 4;
UPDATE developers SET salary = 1500 WHERE developer_id = 5;
UPDATE developers SET salary = 1200 WHERE developer_id = 6;
UPDATE developers SET salary = 2300 WHERE developer_id = 7;
UPDATE developers SET salary = 1800 WHERE developer_id = 8;
UPDATE developers SET salary = 3300 WHERE developer_id = 9;
UPDATE developers SET salary = 1400 WHERE developer_id = 10;