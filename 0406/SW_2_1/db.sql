CREATE TABLE animals(
animal_name text NOT NULL,
height int NOT NULL,
weight int NOT NULL,
age int
);

INSERT INTO animals VALUES
('돌고래','130','80','3');

ALTER TABLE animals ADD COLUMN meal [text];
ALTER TABLE animals RENAME COLUMN animal_name TO name;
ALTER TABLE animals DROP COLUMN meal;

ALTER TABLE animals RENAME TO zoo;

DROP TABLE zoo;