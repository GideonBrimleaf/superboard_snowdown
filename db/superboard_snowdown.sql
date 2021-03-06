DROP TABLE IF EXISTS scores;
DROP TABLE IF EXISTS athletes;
DROP TABLE IF EXISTS events;

CREATE TABLE athletes (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  country VARCHAR(100),
  hometown VARCHAR(255),
  sponsor VARCHAR(100)
);

CREATE TABLE events (
  id SERIAL PRIMARY KEY,
  competition VARCHAR(255)
);

CREATE TABLE scores (
  id SERIAL PRIMARY KEY,
  athelete_id INT REFERENCES athletes(id) ON DELETE CASCADE,
  event_id INT REFERENCES events(id) ON DELETE CASCADE,
  score NUMERIC(5,2)
);
