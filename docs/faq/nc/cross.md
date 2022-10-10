# Cross-chain Communication

## How much is cross-chain transfer fee?

The total cost of transfer from BC to FNB is composed of 2 parts:

* Fee for executing `bridge transfer-out` transaction is 0.004FNB,  pay validators on FNB Chain

* Fee for TC-relayers 0.004FNB. it will cover the fees of calling TokenHub Contract on TC.

The total cost of transfer from FNB to BC is composed of 2 parts:

* Fee for Oracle-relayers 0.004FNB, pay for FNB relayers

* Call TokenHub Contract: You need to pay FNB for calling smart-contract on TC, this transaction is metered by gas, which is a global parameter. At the moment, you need to pay about 0.0005FNB ~ 0.0015FNB.

## What's is a FNB relayer?

NCrelayer monitors cross chain packages on FNB Chain, builds and broadcasts transactions to FNB to deliver these packages, which is the key of cross chain communication from FNB Chain to TC.

## What's is an Oracle relayer?

Oracle Relayer watches the state change of FNB Chain. Once it catches Cross-Chain Communication Events, it will submit to vote for the requests. After Oracle Relayers from ⅔ of the voting power of BC validators vote for the changes, the cross-chain actions will be performed. Only validators of FNB Chain are eligible to run Oracle relayers.

## What's an oracle?

In blockchain network, an oracle refers to the element that connects smart contracts with data from the outside world. In the network of FNB Chain, the execution of the transanction wil emit Events, and such events can be packaged and relayed onto BC. In this way, BC will get updates about changes of TC.

## Which wallet support cross-chain transfer?

You need to use [MyEtherWallet](../../smart-chain/wallet/myetherwallet.md) to call contracts and use FNB Chain commandline client: `eth-cli`/ `eth-cli` for complementary commands

Please refer to this [guide](../../smart-chain/developer/cross-chain-transfer.md) for details

## How to send cross-chain transfer?

You can use [FNB Chain extension wallet](../../smart-chain/wallet/shree.md) or

use [Trust wallet](https://community.trustwallet.com/t/how-to-send-and-receive-fnb-on-smart-chain/67430)