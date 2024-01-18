CREATE TABLE characters (
	id SERIAL PRIMARY KEY,
	strength INTEGER NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
);

INSERT INTO characters (strength) SELECT FLOOR(random() * generate_series) FROM generate_series(1, 5432);
