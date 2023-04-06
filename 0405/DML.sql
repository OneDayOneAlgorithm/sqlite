-- CREATE TABLE users (
--  first_name TEXT NOT NULL,
--  last_name TEXT NOT NULL,
--  age INTEGER NOT NULL,
--  country TEXT NOT NULL,
--  phone TEXT NOT NULL,
--  balance INTEGER NOT NULL
-- );


SELECT first_name, balance, age, phone
FROM users 
WHERE balance >= 1000000 and age BETWEEN 20 and 25
ORDER BY age;

SELECT DISTINCT *
FROM users
WHERE country LIKE '경상%'
LIMIT 5 OFFSET 3;

SELECT first_name, age, balance
FROM users
ORDER BY age , balance desc;

