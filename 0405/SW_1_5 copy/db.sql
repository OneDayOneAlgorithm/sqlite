CREATE TABLE users (
 first_name TEXT NOT NULL,
 last_name TEXT NOT NULL,
 age INTEGER NOT NULL,
 country TEXT NOT NULL,
 phone TEXT NOT NULL,
 balance INTEGER NOT NULL
);

SELECT *
from users
ORDER BY age LIMIT 20 OFFSET 40;                               