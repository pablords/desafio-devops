.PHONNY: up down logs
up:
	docker-compose up -d --force-recreate
down:
	docker-compose down
logs:
	docker-compose logs -ft --tail=1000