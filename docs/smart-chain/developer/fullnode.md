# How to Run A Fullnode on FNB Chain

## Fullnodes Functions

* Stores the full blockchain history on disk and can answer the data request from the network.
* Receives and validates the new blocks and transactions.
* Verifies the states of every accounts.

## Supported Platforms

We support running a full node on `Mac OS X`and `Linux`.

## Suggested Requirements

### Fullnode
- VPS running recent versions of Mac OS X or Linux.
- 4 cores of CPU and 8 gigabytes of memory (RAM).
- A broadband Internet connection with upload/download speeds of 5 megabyte per second


## Steps to Run a Full Node

Download  fnb_mainnet.json and static-nodes.json from  https://github.com/githubusername/githubrepo

```
wget  https://raw.githubusercontent.com/githubusername/githubrepo/master/fnb_mainnet.json
wget https://raw.githubusercontent.com/githubusername/githubrepo/master/static-nodes.json
```

Make node folder

```
mkdir node
```

Initialize the Node
```
./geth --datadir ./node init fnb_mainnet.json
```

Copy the static-nodes.json to node/geth

Run the Nodes

```
./geth --datadir node1 --syncmode 'full' --gcmode=archive   --port 40605 --http --http.port 3545 --http.api 'personal,eth,net,web3,personal,admin,miner,txpool,debug' --bootnodes enode://5cefccf77557d8f41c3ff6777a5c73ef57a4999c8878788e659ec45dcaaca71b0f88e45ca28e1fdcec8731a597793ef698ae74ff0e2648d32ae0325984060569@66.29.131.186:0?discport=40606 --networkid 32520 -unlock '0xf32d3C2cC0e32eb36a0AF24d0B72E43AE41b0230' --allow-insecure-unlock

```
