Autonomous Agent Template
-------------------------

Simple modular AIRA example effort.


## Nodes

There are two nodes:

* *trader_node* - to work on offchain negotiations process
* *worker_node* - trivial liability process executor

## Parameters

Objective `QmVAFgUxBitKqtV2sjaYcHkKfcAPVy3GswhaE5n5bcgLkf`

## ACL

You can specify a list of addresses that are able to have an access for the service.
Put all the addresses in `robonomics/acl.yaml` file and pass it as an argument

```
roslaunch autonomous_agent_template trader.launch acl:=$PWD/robonomics/acl.yaml
```

