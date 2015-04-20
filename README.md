# Rails Blogger
This is an blogging app I built at Epicodus using Ruby on Rails, Bootstrap, and a Twilio API.  I used the gem devise
to handle user authentication.  [View Site Here](https://rails--blogger.herokuapp.com/)
## Setup Instructions:
### Gems Used:
```
rails
pg
sass-rails
uglifier
coffee-rails
jquery-rails
turbolinks
pry
bootstrap-sass
shoulda-matchers
rspec-rails
capybara
```
### Install Bundler:
```
$ gem install bundler
```
### Run Bundler:
```
$ bundle
```
### Start the database:
```
$ postgres
```
### Create databases:
```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
$ rails server
```
Type the url localhost:3000 into your web browser.
### Bug Reports
When running rspec, the test database is not clearing out so rake db:test:prepare has to be run each time.
### Author
Alex Kaufman
#### MIT License
