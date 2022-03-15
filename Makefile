
ps:
	docker-compose ps
up:
	docker-compose up -d
down:
	docker-compose down -v --remove-orphans
#-------------------logs----------------------
mysql-logs:
	docker-compose logs -f test_mysql 
mongo-logs:
	docker-compose logs -f test_mongo 
redis-logs:
	docker-compose logs -f test_redis 
#-------------reset and recreate---------------
recreate:
	docker-compose up -d --force-recreate

#-------------MYSQL-----------------------------
mysql-up:
	docker-compose up -d mssqlHost

mysql-ps:
	docker-compose ps

mysql-bash:
	docker-compose exec mssqlHost bash

#-------------PG-----------------------------
bash-pg:
	docker-compose exec pgHost bash

#-------------MONGO-----------------------------
bash-mongo:
	docker-compose exec mongoHost bash

#-------------REDIS-----------------------------
bash-redis:
	docker-compose exec redisHost bash