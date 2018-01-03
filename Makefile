build:
	docker-compose build

up:
	docker-compose up

down:
	docker-compose down

test:
	docker-compose up -d --build &&\
	docker-compose run sinatrilla bundle exec rspec &&\
	docker-compose down
