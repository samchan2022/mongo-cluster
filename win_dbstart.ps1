docker-compose up -d

sleep 5

docker exec mongo1 bash /scripts/init.sh

sleep 3

docker-compose -f docker-compose.yml -f docker-compose.auth.yml up -d
