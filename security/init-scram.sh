sleep 10
# Create SCRAM users - admin first
docker exec broker kafka-configs --zookeeper zookeeper:2181 --alter \
  --add-config 'SCRAM-SHA-512=[password=admin-secret]' \
  --entity-type users \
  --entity-name admin

docker exec broker kafka-configs --zookeeper zookeeper:2181 --alter \
  --add-config 'SCRAM-SHA-512=[password=broker-secret]' \
  --entity-type users \
  --entity-name broker

docker exec broker kafka-configs --zookeeper zookeeper:2181 --alter \
  --add-config 'SCRAM-SHA-512=[password=client-secret]' \
  --entity-type users \
  --entity-name client

echo "SCRAM users created successfully" 