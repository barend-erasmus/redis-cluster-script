# Install: Redis Cluster

To install a Redis Cluster across multiple servers you'll need to execute the following command on each of the servers.

`curl -s https://raw.githubusercontent.com/barend-erasmus/redis-cluster-script/master/install.sh | bash -s "<port1>|<port2>"`

Then on one of the servers you need to execute the clustering commands.

`curl -s https://raw.githubusercontent.com/barend-erasmus/redis-cluster-script/master/cluster.sh | bash -s "<numberOfReplicas>" "<ipAddressOfServer1>|<ipAddressOfServer2>" "<port1>|<port2>"`

For example, if you have two servers with the IP Addresses of '192.168.1.101' and '192.168.1.102', your command will be.

`curl -s https://raw.githubusercontent.com/barend-erasmus/redis-cluster-script/master/cluster.sh | bash -s "1" "192.168.1.101|192.168.1.102" "7001|7002|7003|7004|7005|7006|7007|7008"`