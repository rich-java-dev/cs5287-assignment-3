export KAFKA_OPTS="-Djava.net.preferIPv4Stack=True"
cd ~/kafka_2.13-2.8.0
nohup bin/zookeeper-server-start.sh config/zookeeper.properties &
nohup bin/kafka-server-start.sh config/server.properties &