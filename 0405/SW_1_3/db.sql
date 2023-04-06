CREATE TABLE users (
 first_name TEXT NOT NULL,
 last_name TEXT NOT NULL,
 age INTEGER NOT NULL,
 country TEXT NOT NULL,
 phone TEXT NOT NULL,
 balance INTEGER NOT NULL
);

SELECT first_name, country
from users
WHERE first_name = '건우' and country = '경기도';

SELECT *
from users
WHERE country not in ('강원도','경기도') and age BETWEEN 20 and 30
ORDER BY age;