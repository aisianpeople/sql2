ALTER TABLE animals
	add location VARCHAR(100);

INSERT INTO animals (type, age, location, name)
VALUES ('Cat', 6, 'America', 'Tom'),
('Penguin', 3, 'Madagascar', 'Kwalski'),
('Penguin', 3, 'Madagascar', 'Skipper');

ALTER TABLE animals
	RENAME COLUMN type TO species;

ALTER TABLE animals
	ALTER COLUMN species TYPE VARCHAR;