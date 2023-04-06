CREATE TABLE users (
 name TEXT NOT NULL,
 age INTEGER NOT NULL,
 email TEXT NOT NULL UNIQUE
);

INSERT INTO users VALUES ('test',20,'wook@naver.com');