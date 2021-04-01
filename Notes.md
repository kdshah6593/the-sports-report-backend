# API Set Up

## Models
Users
- username
- password
- email
- first name
- last name

- has_many Players
- has_many Teams


Players - Need this model so that a User can have array of players (User.players)
- first name
- last name
- sport
- team name

- has_many users


Teams - Need this model so that a User can have array of teams (User.teams)
- name
- city
- sport

- has_many users

### Because of many to many relationships, need joins tables

user_players
- user_id
- player_id

- belongs_to user
- belongs_to player 

user_teams
- user_id
- team_id

- belongs_to user
- belongs_to team