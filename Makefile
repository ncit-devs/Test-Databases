
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
bash:
	docker-compose exec test_mysql bash
