DROP TABLE users;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(12),
    pwd VARCHAR(12) ,
    isactive BOOLEAN 
);

INSERT INTO users(username,pwd,isactive) VALUES ('asdf','123',true),('fdsa','123',false);