## Description

Todo Rails Sample App

## Dependencies

By default, the dependencies and conventions are:

- ruby 2.1.6
- bundler
- postgresql
- redis (for background jobs)
- having "./bin" in your $PATH

You do not have to use them all but will need to update the project yourself.

## Instructions

### Clone the project

    git clone git@github.com:challengepost/todo-rails.git your_project /path/to/new/project
    cd /path/to/new/project/

### Update dependencies

If you know right away that you won't need certain gems, update Gemfile

### Install dependencies

     gem install bundler
     bundle install
     bundle install --binstubs

### Setup default database

- `cp config/database-example.yml config/database.yml`
- update database name and user
- `createuser [new_user] --createdb` # if necessary
- `rake db:create db:migrate`
- `rake db:migrate`
- `rake db:seed`

### Run tests faster

Spring will make running your tests faster, but to take advantage of it you need to run it independently (i.e. without `bundle exec`). Install spring gem the old fashioned way

     gem install spring

### Update configurations

    rake secret

And place result into config/initializers/secret_token.rb

**prerequisite:**

`brew install postgres` or [install and launch Postgres app](http://postgresapp.com/)

You will probably run into some errors, use these resources to fix them:

- [`initdb` fatal shared memory error](http://willbryant.net/software/mac_os_x/postgres_initdb_fatal_shared_memory_error_on_leopard)
- [[...] Unix domain socket "/var/pgsql_socket/.s.PGSQL.5432"?](http://stackoverflow.com/questions/6770649/repairing-postgresql-after-upgrading-to-osx-10-7-lion)
- [[...] Setting SHMMAX etc values on MAC OS X 10.6 for PostgreSQL](http://stackoverflow.com/questions/2017004/setting-shmmax-etc-values-on-mac-os-x-10-6-for-postgresql)

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

# Other info

TODO
