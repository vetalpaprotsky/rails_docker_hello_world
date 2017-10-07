# Rails Docker Hello World

Follow these instructions in order to setup the project.

1. Install Docker

	https://www.docker.com/get-docker


2. Install Docker Compose

	https://docs.docker.com/compose/install


3. Build images
```
sudo docker-compose build
```

4. Run containers
```
sudo docker-compose up
```

5. Open the app container
```
docker exec -it railsdockerhelloworld_app_1 /bin/bash
```

6. Create the database and run migrations
```
rake db:create
rake db:migrate
```
