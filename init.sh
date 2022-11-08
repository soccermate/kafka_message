#!/bin/bash

cd /Users/jeongsang-won/kafka/kafka_2.12-3.2.3/config
zookeeper-server-start.sh zookeeper.properties &
kafka-server-start.sh server.properties &
kafka-server-start.sh server-1.properties &
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic user_created --partitions 1 --replication-factor 2 &
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic point_earned --partitions 1 --replication-factor 2 &
