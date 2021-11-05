.PHONNY: up down logs vagrant
up:
	docker-compose up -d --force-recreate
down:
	docker-compose down
logs:
	docker-compose logs -ft --tail=1000

vagrant:
		vagrant plugin install vagrant-docker-compose && vagrant up