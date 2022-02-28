
ps:
	docker-compose ps
up:
	docker-compose up -d
down:
	docker-compose down -v --remove-orphans
#-------------------logs----------------------------------
mysql-logs:
	docker-compose logs -f test_mysql 
mongo-logs:
	docker-compose logs -f test_mongo 
redis-logs:
	docker-compose logs -f test_redis 
#-------------reset and recreate--------------------------
recreate:
	docker-compose up -d --force-recreate
#-------------bash and sh---------------------------------
bash-mssql:
	docker-compose exec mssqlHost bash
bash-mysql:
	docker-compose exec mysqlHost bash
bash-pg:
	docker-compose exec pgHost bash
bash-mongo:
	docker-compose exec mongoHost bash
bash-redis:
	docker-compose exec redisHost bash