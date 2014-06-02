MagmaConf Check In App
======================

MagmaConf Check In application for Conferences.

## Installation

    $ git clone git@github.com:vicmaster/MagmaRegistration.git
    $ bundle install
    $ rake db:setup
    $ rake db:migrate RAILS_ENV=test
    $ rake db:seed

## Populate catalogs

  	$ rake populate:os
  	$ rake populate:size
  	$ rake populate:os RAILS_ENV=test
  	$ rake populate:size RAILS_ENV=test

## Run Application

	$ rails server

## Expected Conventions

* http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html

