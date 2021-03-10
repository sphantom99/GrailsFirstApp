DROP TABLE depts;
CREATE TABLE depts(
    id SERIAL PRIMARY KEY,
    departmentName VARCHAR(10)
);

INSERT INTO depts(departmentName) VALUES ('Marketing'),('HR'),
('Management'),('Devs');