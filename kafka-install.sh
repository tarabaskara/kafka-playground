#!/bin/bash

sudo apt update
sudo apt install --assume-yes default-jdk

echo "Downloading Kafka.."
wget https://www-us.apache.org/dist/kafka/2.3.0/kafka_2.12-2.3.0.tgz

echo "Extracting.."
tar xzf kafka_2.12-2.3.0.tgz
sudo mv kafka_2.12-2.3.0 /usr/local/kafka

echo "Successfully installed"
