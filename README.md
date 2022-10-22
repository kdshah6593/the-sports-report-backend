# The Sports Report

This is the documentation for the backend of The Sports Report web app developed as a React-Redux project for Flatiron School.

The frontend repo is available at `https://github.com/kdshah6593/the-sports-report-frontend`

## Description

The Sports Report is a web application that provides curated sports articles towards your favorite players and teams. Instead of searching various news sources, all the sources are combined into one place.

This API was developed using `ruby 3.0.1` and `Rails 6.1`

## Installation

NOTE: CURRENTLY NOT DEPLOYED OR HOSTED DUE TO HEROKU FREE TIER BEING REMOVED
~~To use this app, check out the deployed version at [The Sports Report](https://the-sports-report.herokuapp.com/)~~

To play around with the code of the app in development mode, clone these repos:

1. `$ git clone https://github.com/kdshah6593/the-sports-report-frontend`
2. `$ git clone https://github.com/kdshah6593/the-sports-report-backend`

## Usage

After cloning, open up 2 terminals and access the directory for each of them in each terminal `$ cd the-sports-report-frontend` & `$ cd the-sports-report-backend` (if nested under other directories be sure to include those in the path)

In your terminal running the BACKEND:

Run `$ bundle install` to add dependencies, then run `$ rails db:migrate`, and then start the server `$ rails s`. Note the port is `:3001` so it doesn't conflict the the frontend server

In your terminal running the FRONTEND:

Run `yarn install && yarn start` or `npm install && npm start` (depending if you have yarn); this will open up the frontend page in your default browser. The page will reload if you make edits. You will see any lint errors in the console.

You only need to install once, after you can just run `yarn start` or `npm start`.

To exit either server, run `CTRL + C`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kdshah6593/the-sports-report-backend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Code of Conduct](https://github.com/kdshah6593/the-sports-report-backend/blob/main/CODE_OF_CONDUCT.md).

## License

This app is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the StudyDecks project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [Code of Conduct](https://github.com/kdshah6593/the-sports-report-backend/blob/main/CODE_OF_CONDUCT.md).
