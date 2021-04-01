# API Set Up

## Overview
- Build a news app that allows users to add their favorite players and teams to see news related only to them in one place

## Models
Users
- id
- username
- password
- email
- first name
- last name

- has_many Players
- has_many Teams


Players - Need this model so that a User can have array of players (User.players)
- name ("strPlayer)
- sport ("strSport")
- team name ("strTeam")
- sportsDbId ("idPlayer")

- has_many users


Teams - Need this model so that a User can have array of teams (User.teams)
- name ("strTeam")
- sport ("strSport")
- sportsDbId ("idTeam")

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

## User Stories
1. User should be able
- to sign up
- to log in
- view news on their favorite players
- view news on their favorite teams 
- add/delete players to their list
- add/delete more teams to their list
- to view a profile page with their information, # of players and teams they follow 

## Other Thoughts
- when user wants to add a new player or team, it will go to new page where they can type in form and submit search
- this will make fetch Request to sportsDB API (depending on team or player) and populate an array with search results for
- a new form will then generate with radio buttons (the value on form will be the name) to choose one of the options and submit
- when form is submitted, it will:
    - send POST request with relevant information to backend and search for that team or player;
    - if it doesn't exist (findorcreateby sportsDbId), it will add that player/team and associate it with user;
    - if it does exist, then it will associate it with user
    - then frontend will re-render with new player/team showing on the list

- on frontend, store will manage who the current selection is, so that fetch call can be made to news API to then store the news articles in local state and publish them on screen with hyperlinks to the actual article


## Stretch Goals
1. If you click on player or team, you can see information regarding their next game or tournament
2. News API that allows me to display whole article within the app, not open a new tab to the article