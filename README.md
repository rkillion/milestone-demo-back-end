# Milestone Demo Back-end API

## Setup
Run the following commands in the project directory to initialize the application

`bundle install`
`rails db:migrate db:seed`

Open the server using the command below which also defines the port you want to run it on. It must be different from the port the front-end server is running on. React uses port 3000 so you could run the the back-end on 4000 like so:

`rails s -p 4000`

The front-end is set up to make server calls to http://localhost:4000 so if you use 4000, you are ready to go. If not, follow the instructions on the front end to change the API address.


<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
