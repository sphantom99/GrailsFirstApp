DROP TABLE Dept;
CREATE TABLE Dept(
    id SERIAL PRIMARY KEY,
    department_name VARCHAR(10)
);

INSERT INTO Dept(department_name) VALUES ('Marketing'),('HR'),
('Management'),('Devs');