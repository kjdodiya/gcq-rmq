#!/bin/bash

delay=15
# start rabbitmq server
rabbitmq-server -detached

echo "[Configuration] Waiting $delay seconds for RabbitMQ to start."

sleep $delay
# setup user and permissions
rabbitmqctl add_user $U1 $P1
rabbitmqctl set_user_tags $U1 administrator
rabbitmqctl set_permissions -p / $U1 ".*" ".*" ".*"

rabbitmqctl add_user $U2 $P2
rabbitmqctl set_user_tags $U2 administrator
rabbitmqctl set_permissions -p / $U2
rabbitmq-plugins enable rabbitmq_management

/bin/bash
exec "$@"