CREATE TABLE plants (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

INSERT INTO plants (name)
VALUES ('Tulsi'), ('Mint'), ('Basil'), ('Aloe Vera');
