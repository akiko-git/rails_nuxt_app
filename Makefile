start:
	docker-compose up -d

restart:
	docker-compose restart

stop:
	docker-compose stop

back:
	docker-compose exec ruby_app_backend bash

front:
	docker-compose exec ruby_app_frontend bash

db-host:
	docker exec -it ruby_app_db bash