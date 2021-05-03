start:
	docker-compose up -d

restart:
	docker-compose restart

stop:
	docker-compose stop

backend:
	docker-compose exec backend sh

frontend:
	docker-compose exec frontend sh

db-host:
	docker exec -it ruby_app_db bash