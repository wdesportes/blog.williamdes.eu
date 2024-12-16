+++
title = "Installing a distributed etcd cluster on Debian 12"
date = 2024-10-20T14:30:00+00:02
updated = 2024-10-21T00:45:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "How to install a distributed etcd cluster on Debian 12."
keywords = ["distributed", "etcd"]
category = "Tutorial"
images = []

[taxonomies]
tags = ["infra-tutorial", "distributed", "etcd"]
+++

Install a distributed [etcd](https://etcd.io) cluster on Debian 12.

<!-- more -->

This post will cover how to install a distributed [etcd](https://etcd.io) cluster on Debian 12.

## What is etcd ?

"etcd is a distributed, reliable key-value store for the most critical data of a distributed system."

If you are looking for a SQL style alternative to etcd, check out the [article about rqlite](./install-a-distributed-rqlite-cluster.md).

## Installing

On all nodes, run `apt-get install etcd-server`.
At the time writing this the Debian bookworm version of `etcd-server` is `3.4.23-4+b4`.

On one node you will need `etcd-client` to run `etcdctl` and check the network status.

## Topology

This will be a 3 node setup, the "Tours" and "Paris" nodes have private and public ips (via Internet) to communicate between each other.
The "Mini" node will only be able to communicate with the other nodes via the public Internet.
The "Mini" node can receive traffic on it's IPv4 IP, but not on it's IPv6 IP.

```
-                      private link
-  +----------------+                  +----------------+
-  |                +----------------->|                |
-  |   Tours        |                  |   Paris        |
-  |                |<-----------------+                |
-  |                |                  |                |
-  +-----+--+-------+                  +---+------+-----+
-      ^ |  | ^       Internet link        | ^    | ^
-      | |  | |                            | |    | |
-      | |  | +----------------------------+ |    | |
-      | |  +--------------------------------+    | |
-      | |                                        | |
-      | |                                        | |
-      | | Internet link                          | |  Internet link
-      | |                                        | |
-      | |                                        | |
-      | |                                        | |
-      | |                                        | |
-      | |           +----------------+           | |
-      | |           |                |           | |
-      | +---------->|   Mini         |<----------+ |
-      +-------------+                +-------------+
-                    |                |
-                    +----------------+
```

## Configuring

### The variables

You can find them on [etcd.io 3.4 op-guide](https://etcd.io/docs/v3.4/op-guide/configuration/).

- `ETCD_NAME` is the human-readable name for the node.
- `ETCD_DATA_DIR` is important as it is the path to the data directory.
- `ETCD_LISTEN_CLIENT_URLS` is the list (comma separated) of URLs to listen (port `2379`) on for client traffic. The format is `scheme://IP:port`, to bind all IPs use `0.0.0.0`.
- `ETCD_LISTEN_PEER_URLS` same as clients but using the port `2380`.
- `ETCD_ADVERTISE_CLIENT_URLS` is a list of this member's client URLs to advertise to the rest of the cluster. These URLs can contain domain names. Avoid `localhost` as it may create infinite loops. Example: `http://example.com:2379, http://10.0.0.1:2379`

#### Bootstrap variables for the cluster

- `ETCD_INITIAL_ADVERTISE_PEER_URLS` is a list of this member's peer URLs to advertise to the rest of the cluster. These addresses are used for communicating etcd data around the cluster. At least one must be routable to all cluster members. These URLs can contain domain names.
- `ETCD_INITIAL_CLUSTER` is the initial cluster configuration for bootstrapping. Example: `default=http://localhost:2380`
- `ETCD_INITIAL_CLUSTER_STATE` is a value to set to "new" for all members present during initial static or DNS bootstrapping. If this option is set to "existing", etcd will attempt to join the existing cluster. If the wrong value is set, etcd will attempt to start but fail safely.
- `ETCD_INITIAL_CLUSTER_TOKEN` A value to use for the initial cluster token for the etcd cluster during bootstrap.

### The mini node

Edit: `/etc/default/etcd`

```env
ETCD_NAME="company-name-mini"
ETCD_DATA_DIR="/var/lib/etcd"

ETCD_LISTEN_CLIENT_URLS="http://192.168.1.11:2379,http://127.0.0.1:2379"
ETCD_LISTEN_PEER_URLS="http://192.168.1.11:2380"
# Public IPs here or private ones if applicable
ETCD_ADVERTISE_CLIENT_URLS="http://82.11.22.33:2379"

ETCD_INITIAL_CLUSTER_STATE="new"
ETCD_INITIAL_CLUSTER_TOKEN="company-name-etcd-cluster-random-string"

# Similar to ETCD_ADVERTISE_CLIENT_URLS with another port
ETCD_INITIAL_ADVERTISE_PEER_URLS="http://82.11.22.33:2380"
ETCD_INITIAL_CLUSTER="company-name-mini=http://82.11.22.33:2380,company-name-tours=http://195.8.70.6:2380,company-name-paris=http://185.132.200.12:2380"
```

### The "Paris" node

Edit: `/etc/default/etcd`

```env
ETCD_NAME="company-name-paris"
ETCD_DATA_DIR="/var/lib/etcd"

ETCD_LISTEN_CLIENT_URLS="http://10.18.22.5:2379,http://127.0.0.1:2379"
ETCD_LISTEN_PEER_URLS="http://10.18.22.5:2380"
# Public IPs here or private ones if applicable
ETCD_ADVERTISE_CLIENT_URLS="http://185.132.200.12:2379"

ETCD_INITIAL_CLUSTER_STATE="new"
ETCD_INITIAL_CLUSTER_TOKEN="company-name-etcd-cluster-random-string"

# Similar to ETCD_ADVERTISE_CLIENT_URLS with another port
ETCD_INITIAL_ADVERTISE_PEER_URLS="http://185.132.200.12:2380"
ETCD_INITIAL_CLUSTER="company-name-mini=http://82.11.22.33:2380,company-name-tours=http://195.8.70.6:2380,company-name-paris=http://185.132.200.12:2380"
```

### The "Tours" node

Edit: `/etc/default/etcd`

```env
ETCD_NAME="company-name-tours"
ETCD_DATA_DIR="/var/lib/etcd"

ETCD_LISTEN_CLIENT_URLS="http://172.16.22.3:2379,http://127.0.0.1:2379"
ETCD_LISTEN_PEER_URLS="http://172.16.22.3:2380,http://127.0.0.1:2380"
# Public IPs here or private ones if applicable
ETCD_ADVERTISE_CLIENT_URLS="http://195.8.70.6:2379"

ETCD_INITIAL_CLUSTER_STATE="new"
ETCD_INITIAL_CLUSTER_TOKEN="company-name-etcd-cluster-random-string"

# Similar to ETCD_ADVERTISE_CLIENT_URLS with another port
ETCD_INITIAL_ADVERTISE_PEER_URLS="http://195.8.70.6:2380"
ETCD_INITIAL_CLUSTER="company-name-mini=http://82.11.22.33:2380,company-name-tours=http://195.8.70.6:2380,company-name-paris=http://185.132.200.12:2380"
```

## Testing

### Firewall tests

You will need to add this script `listen.py` on all machines, it only does a port listen:

```py
#!/usr/bin/python
import socket

# Source: https://gist.github.com/echojc/5632656

port = 2380
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('', port))
s.listen(1)

while 1:
  (c, a) = s.accept()
  print('connection from: ', a)
```

Then run it:
```sh
# Stop etcd if it is running
service etcd stop
# WARNING: delete any previous data
rm -rv /var/lib/etcd/*
# Listen to the port
python3 listen.py &
# Write the pid in a file
echo $! >/tmp/test_server.pid
```

Also, source of the port testing command: [a post on superuser](https://superuser.com/a/1053577/609233).

#### On the mini node

```sh
# Test itself
</dev/tcp/192.168.2.32/2380 && echo Port is open || echo Port is closed
# Test Tours
</dev/tcp/195.8.70.6/2380 && echo Port is open || echo Port is closed
# Test Paris
</dev/tcp/185.132.200.12/2380 && echo Port is open || echo Port is closed
```

#### On the Paris node

```sh
# Test itself
</dev/tcp/10.18.22.5/2380 && echo Port is open || echo Port is closed
# Test Mini
</dev/tcp/82.11.22.33/2380 && echo Port is open || echo Port is closed
# Test Tours
</dev/tcp/195.8.70.6/2380 && echo Port is open || echo Port is closed
```

#### On the Tours node

```sh
# Test itself
</dev/tcp/172.16.22.3/2380 && echo Port is open || echo Port is closed
# Test Mini
</dev/tcp/82.11.22.33/2380 && echo Port is open || echo Port is closed
# Test Paris
</dev/tcp/185.132.200.12/2380 && echo Port is open || echo Port is closed
```

### Start the cluster

Notes: You must start at least 2 etcd nodes whitin 50 seconds or it will return error because of the master election timeout.

Note: One mistake I made while doing the setup was not having the same `ETCD_INITIAL_CLUSTER` on all 3 machines.
It did give some weird `context deadline exceeded` and `exceeded header timeout`.

On all machines, run:

```sh
# Kill the PID
kill $(cat /tmp/test_server.pid)
# Remove the PID file
rm -v /tmp/test_server.pid ./listen.py
service etcd start
# Maybe wait one second and run:
curl http://127.0.0.1:2380/version
# On my setup it outputs: {"etcdserver":"3.4.23","etcdcluster":"3.4.0"}
```

### Inspect the cluster

```sh
# Run this on the node(s) where etcd-client is installed
etcdctl --endpoints=127.0.0.1:2380 endpoint status -w table
```

Split in two for small screens ;)
```
+----------------+-----------------+---------+---------+-----------+
|    ENDPOINT    |       ID        | VERSION | DB SIZE | IS LEADER |
+----------------+-----------------+---------+---------+-----------+
| 127.0.0.1:2380 | 934de65da148d6d |  3.4.23 |   20 kB |     false |
+----------------+-----------------+---------+---------+-----------+
```

```
+------------+-----------+------------+--------------------+--------+
| IS LEARNER | RAFT TERM | RAFT INDEX | RAFT APPLIED INDEX | ERRORS |
+------------+-----------+------------+--------------------+--------+
|      false |         3 |         14 |                 14 |        |
+------------+-----------+------------+--------------------+--------+
```

```sh
etcdctl --endpoints=http://127.0.0.1:2380 member list
```

```
# 934de65da148d6d, started, company-name-mini, http://82.11.22.33:2380, http://82.11.22.33:2379, false
# 6c34ed0ae8842035, started, company-name-paris, http://185.132.200.12:2380, http://185.132.200.12:2379, false
# d9f8d0469a6bd93d, started, company-name-tours, http://195.8.70.6:2380, http://195.8.70.6:2379, false
```

```sh
# Ask all nodes at once (set one to 127.0.0.1):
etcdctl --endpoints=http://82.11.22.33:2380,http://195.8.70.6:2380,http://127.0.0.1:2380 endpoint status -w table
etcdctl --endpoints=http://82.11.22.33:2380,http://195.8.70.6:2380,http://127.0.0.1:2380 member list -w table
etcdctl --endpoints=http://82.11.22.33:2380,http://195.8.70.6:2380,http://127.0.0.1:2380 alarm list
```

### Test the cluster

```sh
# On one node
etcdctl --endpoints=http://127.0.0.1:2380 put testkey okay
# Try on all nodes
etcdctl --endpoints=http://127.0.0.1:2380 get testkey
# On one node
etcdctl --endpoints=http://127.0.0.1:2380 del testkey
```
