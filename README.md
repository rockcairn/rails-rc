# README

## Ruby version
```
brew install rbenv
rbenv install 3.3.4
rbenv global 3.3.4
ruby -v
```
## Rails 8
```
gem install rails
rails -v # should show something like Rails 8.0.x
```
## Create Project
```rails new rails-rc -d postgresql```

## Project Concept
- Content choices are from [rockcairn.com](http://rockcairn.com)
  - a reinvisioning of the rockcairn site as a Rails app

## Database initialization
```
brew install postgresql
brew services start postgresql
```
- for macos if you don't setup a user its just your macos user name without password

## Database creation
```bin/rails db:create```

## Database Migration and Seeding
```
bin/rails db:migrate
bin/rails db:seed
```

## Run the Service
- ```bin/rails server```
- or
- ```bin/dev```

## Open Browser
- [http://localhost:3000](http://localhost:3000)
