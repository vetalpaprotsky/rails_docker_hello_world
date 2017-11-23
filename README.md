# Rails Docker Hello World

Followed by http://codepany.com/blog/rails-5-and-docker-puma-nginx/

(4. Dockerize Rails app and Nginx – separate containers)

--------------------------------------------------------------------------------

Follow these steps in order to setup the project on your machine without Nginx.
ENV == development

1. Install ruby 2.4.1 (use RVM or rbenv)

2. Install bundler
```
gem install bundler
```

3. Install gems using bundler
```
bundle install --path vendor/bundle
```

4. Create and migrate the database
```
bundle exec rake db:create
bundle exec rake db:migrate
```

5. Run rails app
```
bundle exec rails s
```

6. You're good to go! Open http://localhost:3000

--------------------------------------------------------------------------------

Follow these instructions in order to setup the project with Nginx using Docker.
ENV == production

1. Install Docker

	https://www.docker.com/get-docker


2. Install Docker Compose

	https://docs.docker.com/compose/install


3. Precompile assets

Need to come up with a better solution. It should not be here.
This is a bad approach, because, you'd need to setup
the project on your machine in order to precompile assets.
When you create the Nginx image, you copy assets from the project to the image,
that's why you need assets to be in the project.
```
bundle exec rake assets:precompile RAILS_ENV=production
```

4. Build images
```
sudo docker-compose build
```

5. Run containers
```
sudo docker-compose up
```

6. Open the app container
```
sudo docker exec -it railsdockerhelloworld_app_1 /bin/bash
```

7. Create the database and run migrations
```
rake db:create
rake db:migrate
```

8. You're good to go! Open http://localhost
