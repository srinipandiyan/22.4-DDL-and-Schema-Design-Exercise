Teams:
team_id (PK)
team_name
team_city

Players:
player_id (PK)
player_name
team_id (FK)

Goals:
goal_id (PK)
player_id (FK)
match_id (FK)
goal_time

Matches:
match_id (PK)
match_date
match_location
start_time
season_id (FK)
home_team_id (FK)
away_team_id (FK)
head_referee_id (FK)
assistant_referee_id (FK)

Referees:
referee_id (PK)
referee_name

Seasons:
season_id (PK)
start_date
end_date

Standings:
standing_id (PK)
team_id (FK)
season_id (FK)
match_results
rank