## Description

Todo Rails Sample App

## Dependencies

- ruby 2.1.6
- bundler

## Setup

Clone the project

    git clone git@github.com:challengepost/todo-rails.git your_project /path/to/new/project
    cd /path/to/new/project/

Install dependencies

     gem install bundler
     bundle install
     bundle install --binstubs

Setup the database

- `cp config/database-example.yml config/database.yml`
- `rake db:setup db:seed`

# Workflow

1. checkout a feature branch
2. write failing tests
3. write just enough code to make the tests pass
4. push to github (git push origin [branch_name]])
5. create a pull request
6. get your code reviewed
7. deploy to staging (rake deploy:staging)
8. get your feature reviewed
9. deploy to production
