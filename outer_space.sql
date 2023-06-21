-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE galaxies (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE stars (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  galaxy_id INT REFERENCES galaxies(id)
);

CREATE TABLE planets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  orbital_period DECIMAL,
  star_id INT REFERENCES stars(id)
);

CREATE TABLE moons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  planet_id INT REFERENCES planets(id)
);

INSERT INTO galaxies (name) VALUES
  ('Milky Way');

INSERT INTO stars (name, galaxy_id) VALUES
  ('The Sun', 1),
  ('Proxima Centauri', 1),
  ('Gliese 876', 1);

INSERT INTO planets (name, orbital_period, star_id) VALUES
  ('Earth', 1, 1),
  ('Mars', 1.88, 1),
  ('Venus', 0.62, 1),
  ('Neptune', 164.8, 1),
  ('Proxima Centauri b', 0.03, 2),
  ('Gliese 876 b', 0.23, 3);

INSERT INTO moons (name, planet_id) VALUES
  ('The Moon', 1),
  ('Phobos', 2),
  ('Deimos', 2),
  ('Naiad', 4),
  ('Thalassa', 4),
  ('Despina', 4),
  ('Galatea', 4),
  ('Larissa', 4),
  ('S/2004 N 1', 4),
  ('Proteus', 4),
  ('Triton', 4),
  ('Nereid', 4),
  ('Halimede', 4),
  ('Sao', 4),
  ('Laomedeia', 4),
  ('Psamathe', 4),
  ('Neso', 4);