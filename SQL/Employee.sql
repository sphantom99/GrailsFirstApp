DROP TABLE employee;
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    afm VARCHAR(9),
    dob DATE,
    department INT,
    CONSTRAINT fkdepartment FOREIGN KEY(department) 
    REFERENCES Dept(id)
);


INSERT INTO employee(firstName,lastName,afm,dob,department) VALUES ('John','Doe','123456789','1999-07-16',
1);