DROP TABLE dept;
CREATE TABLE dept(
    id SERIAL PRIMARY KEY,
    departmentName VARCHAR(10)
);

INSERT INTO dept(departmentName) VALUES ('Marketing'),('HR'),
('Management'),('Devs');