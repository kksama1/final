# README

This README would normally document whatever steps are necessary to get the
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

* ...
_____________________________________________________________________________________________
adding gem 'devise'

bundle 

rails g devise:install

adding config.action_mailer.default_url_options = { host: 'localhost', port: 3000 } to "development.rb"

adding 
  <p class="notice"><%= notice %></p>
  <p class="alert"><%= alert %></p>
to application.html.rb

setting 'page#home' as default page

rails g devise:views

rails g devise User

rails db:migrate

adding https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css to application.html.rb


added some frontend


 rails g migration add_role_to_users role:integer

 rails g migration addDetailsToUser first_name:string last_name:string username:string about:string work_exp:string phone_numb:integer


gem 'bootstrap'
gem 'bootstrap_form'

