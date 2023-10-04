## Swisstronik-Developer-Challenge-2
This project aims to demonstrate the relative privacy of Swisstronik Chain to other Chains.
In this project comparison would be made between Mumbai testnet and Swisstronik testnet
## Methodology
1. using foundry, a contract with private variable was deployed on both Chains.
2. Using RPC method `eth_getStorageAt()` the visibility of these variables(both chains) underhood was checked.
3 see script file in `test/Hidden.t.js`
## deployed addresses
- swisstronik testnet: `0xb053549E7a06a9356Fd8D36C7255faF370e8141F`
- Mumbai testnet: `0xEa98C8eE879bfcdDF7F8e3D16800f4B44914844e`

## console log
1. Swisstronik Testnet return value
```
0x5cb7d25581f6890f089506356232b0d2dadff74af4ee15436be9c0a3fecc5535
```
2. Mumbai testnet return value
```
0x0000000000000000000000000000000000000000000000000000000000000004
```