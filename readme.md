Introduction
---------------------------------------------------
The goal of the project is to provide a simple download and run mongo cluster in single host for rapid mongo cluster with authentication for testing.

Pre-requisites
---------------------------------------------------
Docker

Project Setup
---------------------------------------------------

Step 1: Clone the project
--------------------------------------------------
`
git clone https://github.com/samchan2022/mongo-cluster
`


Step 2: Update your host machine IP address 
---------------------------------------------------
1. In project root, go to scripts/init.sh

`
cd mongo-cluster
`

2. Find the line with HOST1='192.168.XX.XXX'
3. Update your intranet IP correspondingly

To find the IP address

* For Linux

`
ifconfig | grep 192 | awk '{print $2}'
`

* For Window

`
ipconfig
`

Step 3: Start the mongo cluster
---------------------------------------------------
* For Linux

`
sh run_db_auth.sh
`

* For Window (powershell)

`
. win_db_auth.ps1
`

Remove the database
---------------------------------------------------
* For Linux

`
sh clean.sh
`

* For Window (powershell)

`
. clean.ps1
`

