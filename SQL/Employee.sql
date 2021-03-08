DROP TABLE Employee;
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    afm VARCHAR(9),
    dob DATE,
    department INT,
    CONSTRAINT fk_department FOREIGN KEY(department) 
    REFERENCES Dept(id)
);


INSERT INTO employee(first_name,last_name,afm,dob,department) VALUES ('John','Doe','123456789','1999-07-16',
1);