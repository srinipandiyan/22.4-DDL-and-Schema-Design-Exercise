CREATE TABLE Teams (
  team_id SERIAL PRIMARY KEY,
  team_name VARCHAR(255),
  team_city VARCHAR(255)
);

CREATE TABLE Players (
  player_id SERIAL PRIMARY KEY,
  player_name VARCHAR(255),
  team_id INT,
  FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

CREATE TABLE Goals (
  goal_id SERIAL PRIMARY KEY,
  player_id INT,
  match_id INT,
  goal_time TIME,
  FOREIGN KEY (player_id) REFERENCES Players(player_id),
  FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);

CREATE TABLE Matches (
  match_id SERIAL PRIMARY KEY,
  match_date DATE,
  match_location VARCHAR(255),
  start_time TIME,
  season_id INT,
  home_team_id INT,
  away_team_id INT,
  head_referee_id INT,
  assistant_referee_id INT,
  FOREIGN KEY (season_id) REFERENCES Seasons(season_id),
  FOREIGN KEY (home_team_id) REFERENCES Teams(team_id),
  FOREIGN KEY (away_team_id) REFERENCES Teams(team_id),
  FOREIGN KEY (head_referee_id) REFERENCES Referees(referee_id),
  FOREIGN KEY (assistant_referee_id) REFERENCES Referees(referee_id)
);

CREATE TABLE Referees (
  referee_id SERIAL PRIMARY KEY,
  referee_name VARCHAR(255)
);

CREATE TABLE Seasons (
  season_id SERIAL PRIMARY KEY,
  start_date DATE,
  end_date DATE
);

CREATE TABLE Standings (
  standing_id SERIAL PRIMARY KEY,
  team_id INT,
  season_id INT,
  match_results TEXT,
  rank INT,
  FOREIGN KEY (team_id) REFERENCES Teams(team_id),
  FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);