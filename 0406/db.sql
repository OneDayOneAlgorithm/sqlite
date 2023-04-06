CREATE TABLE users (
 first_name TEXT NOT NULL,
 last_name TEXT NOT NULL,
 age INTEGER NOT NULL,
 country TEXT NOT NULL,
 phone TEXT NOT NULL,
 balance INTEGER NOT NULL
);

SELECT country, avg(balance)
FROM users
GROUP BY country
ORDER by avg(balance) DESC;

SELECT country, count(*)
from users
GROUP BY country;

SELECT last_name, count(*) AS number_of_nam
FROM users
GROUP BY last_name;

CREATE TABLE classmates (
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    address TEXT NOT NULL
);

INSERT INTO classmates (name, age, address)
VALUES ('홍길동',23,'서울');

INSERT into classmates
VALUES
    ('김철수', 30, '경기'),
    ('이영미', 31, '강원'),
    ('박진성', 26, '전라'),
    ('최지수', 12, '충청'),
    ('정요한', 28, '경상');

UPDATE classmates
SET name='김철수한무두무',
    address='제주도'
where rowid = 3;

DELETE FROM classmates
WHERE name LIKE '%영%';

