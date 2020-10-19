# React on Rails S3 Direct Upload

Basic React on Rails App for uploading images to AWS S3 bucket directly from frontend.

We use `react-on-rails` gem for React frontend and use `aws-sdk-s3` gem for uploading files to AWS S3 bucket.

## Project setup
 ### Ruby on Rails
Perform `bundle install` to install Ruby on Rails gem.
### ReactJS 
Run `yarn install` or `yarn` to install ReactJS frontend dependencies.

### Database
Create database by running below command.
```ruby
bundle exec rails db:create
```
Run database migration.
````ruby
bundle exec rails db:migrate db:seed
````


## How to run
Copy the .env.sample file to .env and add the AWS S3 credentials.
```ruby
cp .env.sample .env
```

You should change the region in the `/config/initializers/aws.rb` into the region of your S3 bucket.
 
We use foreman to run the website.
- Rails Seraver
- Webpack server

Run the below command.
```ruby
foreman start -f Procfile.dev
```

Visit http://localhost:3000
