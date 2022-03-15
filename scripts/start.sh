#!/bin/bash
cp /scripts/mongodb.key $HOME
chmod 400 $HOME/mongodb.key

/usr/bin/mongod --bind_ip_all --replSet csrs --auth --keyFile $HOME/mongodb.key
