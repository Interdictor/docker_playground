build:
	docker-compose build

up:
	docker-compose up

down:
	docker-compose down

tests:
	docker-compose run sinatrilla bundle exec rspec
