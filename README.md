# Kafka Playground
Playground repository to mess around with Kafka things.

## Development setup
1. Install [Vagrant](https://www.vagrantup.com/docs/installation/)
2. Clone this repo `git clone https://github.com/tarabaskara/kafka-playground.git`
3. Go inside this repo folder
4. Run `vagrant up --provision`

---

## How to use
1. SSH into the machine by running `vagrant ssh`
2. Go to Kafka dir `cd /usr/local/kafka`

### Start Kafka Broker
1.  Start Zookeeper server
```
sudo bin/zookeeper-server-start.sh config/zookeeper.properties
```
2. Start Kafka server
```
sudo bin/kafka-server-start.sh config/server.properties
```

### Create a Topic
```
sudo bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic newTopic
```

### Produce Messages 
```
sudo bin/kafka-console-producer.sh --broker-list localhost:9092 --topic newTopic
```

### Consume Messages
```
sudo bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic newTopic --from-beginning
```
