## RabbitMQ with username and password from environment variables

### Build image (RMQ)

docker build -t ngcq-rmq:<tag_name> -f Dockerfile.rmq .

### Build image (HLB)

This needs ta dependency which is in gcq-deps directory.
so run docker build from gcq-rmq directory

cd gcq-rmq
docker build -t ngcq:<tag_name> -f Dockerfile.hlb .

This may take 10-15 mins to build

docker-compose file has to be changed at two places 

### DO NOT COPY PASTE THIS DOCKER-COMPOSE
Refere docker-compose file in this repo. 
It has things to be changed marked as Change 1 and Change 2

#### In doubt whatsapp me ;) 

