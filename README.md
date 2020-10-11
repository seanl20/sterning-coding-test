# README

This project is done for the coding test with the recruitment agency Sterning, the root page was set to the import page.
Once the data was imported via selecting csv in the root page or the /users/import page, it would then display two buttons to take the user to two pages with the data.
The datatable_view page would use the datatable plugin(https://datatables.net) to display the data and have sorting, searching and pagenation functionality.
The Vuetable_view page would user basic bootstrap styling and vue js to display the data in a table and have the sorting, searching and pagenation functionality done by vuejs.

Manual Testing was done by imputting the csv provided (https://docs.google.com/spreadsheets/d/10c7r-kjdWM4L8kWK0nfE6JgHskzqp7DTF8MkUIo7-_o/edit#gid=0) and go to the users, locations, 
affiliations, user_affiliation and user_locations index page and cross reference the spreadsheet to see if all the correct data was added.

As for the Rspec suite, it was made so that the errors were fixed.

* Ruby version
ruby version: 2.6.6

* Database creation
database uses postgres, so require to install postgres and start the server.
instruction on installing postgresql: 
	ubuntu: https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-18-04
	mac: https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-macos

* How to run the test suite
bundle exec rspec
