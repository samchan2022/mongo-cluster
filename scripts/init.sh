#!/bin/bash

# IMPORTANT
# UPDATE YOUR HOST HERE
#---------------------------------------------------
HOST1='192.168.XX.XXX'
#HOST1='192.168.1.123'
#---------------------------------------------------
HP11=27001
HP12=27002
HP13=27003

mongo <<EOF
var config = {
    "_id": "csrs",
    "version": 1,
    "members": [
        {
            "_id": 1,
            "host": "${HOST1}:${HP11}",
            "priority": 3
        },
        {
            "_id": 2,
            "host": "${HOST1}:${HP12}",
            "priority": 2
        },
        {
            "_id": 3,
            "host": "${HOST1}:${HP13}",
            "priority": 1
        }
    ]
};

rs.initiate(config, { force: true });
rs.status();
EOF

sleep 5

mongo "mongodb://${HOST1}:${HP11},${HOST1}:${HP12},${HOST1}:${HP13}/admin?replicaSet=csrs" <<EOF
db.createUser({
    'user':'myroot',
    'pwd':'myroot',
    'roles':[
        {'role': 'root', 'db': 'admin'}
    ]
});
EOF

