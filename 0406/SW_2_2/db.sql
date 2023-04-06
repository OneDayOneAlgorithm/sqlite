CREATE TABLE animals(
name text NOT NULL,
eat text NOT NULL,
weight int NOT NULL,
height int, 
age int
);

INSERT INTO animals VALUES
('gorilla','omnivore','215','180','6'),
('rabbit','herbivore','3','150',null),
('tiger','carnivore','220','150','3'),
('elephant','herbivore','3800','280','10'),
('dog','omnivore','80','20','1'),
('eagle','carnivore','8','75',null),
('dolphin','carnivore','210',null,'3'),
('alligator','carnivore','250','50',null),
('panda','herbivore','80','90','2'),
('pig','omnivore','70','45','5');

SELECT name, height
FROM animals;

UPDATE animals SET height = 15 WHERE name='rabbit';

DELETE FROM animals WHERE eat = 'omnivore';