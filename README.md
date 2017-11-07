# LOTUS TOKEN NETWORK Smart Contract

The Lotus Token Network Smart Contract is being coded using Solidity, the [contract-oriented high-level programming language](https://solidity.readthedocs.io/en/develop/) designed to target the Ethereum Virtual Machine (EVM).

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

To join the development, you will need to have:
1. Have a good knowledge about Blockchain technology
2. A programmer that have good understanding and experience using JavaScript
3. Have read about Ethereum and Solidity

### Coding Participation Requirements

1. Have a text editor
2. Install MetaMask Extension for Chrome
3. Install Mist or access Browser-based Ethereum Wallet

```
For browser-based: Go to https://wallet.ethereum.org
```

4. Connection to Rinkeby Test NETWORK


## Current Status

The code is being tested using Rinkeby TestNet.

The dev-team finished coding the aspects on the following areas:
1. Token Creation
2. Inclusion of three crowd sale periods
3. Distribution of tokens for each contributed ether
4. Routine to limit contribution based on total supply for each period
5. Trigger to Start Crowd Sale periods
6. Auto-transfer of collected ETHs into another wallet address

### 1. Token Creation

The token creation aspect initializes the token count to zero (0) and presents a Total Supply form field on the smart contract deployment platform.

### 2. Three Crowd Sale Periods

Separate form fields are presented to accept token supply values for the three crowd-sale periods.
Each of these include another form field where the ether token value is to be fed.  

### 3. Token Transfer

Based on the parameters set during the token creation, members of the dev-team and volunteer testers could then send test ethers to the smart contract address in exchange for tokens.

### 4. Contribution Limits

The contract can now identify the token limits and prevent sending tokens or accepting contributions if they exceed the limit.

### 5. Trigger to Start Crowd Sale Periods

To start the PRESALE, the contract admin will have to manually execute the PRESALE function. Once each crowd-sale period reaches the limit, it will go to a waiting stage. To proceed with the next ICO period, the admin will manually execute the function that starts it.

### 6. Auto-transfer Collected ETHs to A Destination Wallet

The process that transfers collected funds into another wallet is now enabled, but will be tweaked to reflect the budget allocation chart... From the chart, a collection of single and multi-signature accounts will be added into the code.

## Next Coding Target

7. Routine to distribute or transfer collected ETHs from crowd-sale to various addresses based on the whitepaper's budget allocation chart (thus making this a full-pledged smart contract).
7a. Create 9 wallets and 10 core team members as follows:

```
1. PRE-ICO Mgt Wallet preicomgtWallet multi-sig linked to addresses of two founders jossWallet, jonWallet.
2. Administrative adminWallet (multi-Sig) for postICO operations (founders as test signatories)
3. preICO SysDev preicosdWallet - multi-sig linked to 4 devAddresses: samWallet, mikeWallet, dondiWallet, mahlWallet
4. postICO Sys Dev posticosdWallet (multi-Sig founders as test signatories)
5. preIcoBranding tamWallet - to cover for designs of logo, whitepaper, and website
6. Marketing mktgWallet (multi-sig founders as test signatories) - postICO marketing budget
7. legalWallet (multi-sig founders as test signatories) - postICO legal budget
8. vcWallet - multi-sig linked to three signatory addresses: lukemWallet,  clairezWallet, wanjWallet
9. contingency cntgncyWallet (multi-sig founders as test signatories) - postICO contingency fund
```

8. Conditions for each crowd sale that sets limits on the min and max eths sent.
9. Transfer of the rest of the tokens into one or more multi-sig wallet(s) based on whitepaper token distribution chart
10. Setting automatic Start and End Dates for each crowd-sale periods
11. Setup of a way to manually stop the ICO period for emergency purposes.



## Built With

* [Atom](https://atom.io/) - The text editor being used
* [Mist](https://github.com/ethereum/mist/releases) - Downloadable Ethereum Wallet and Solidity deployment platform

## Contributing

We are currently basing our Contributing code of conduct and pull request submission process on the one found at  [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426).

## Version Control

We use GitHub's built-in versions control system.

## Coders

* **Michael De Guzman** - *Team Leader*

* **iamthehighway** - *Senior Developer*

* **Mahlory Ambrosio** - *Junior Developer*

* **altcoinrockerxyz** - *Initial Setup of [Lotus Token Network](https://github.com/Lotus-Token-Network) organization on GitHub; Documentation Manager; Junior Developer*

See also the list of [contributors](https://github.com/Lotus-Token-Network/TC/graphs/contributors) who participated in this project.

## License

License for this project is still being discussed but the team is leaning toward going open-source. See the [LICENSE.md](LICENSE.md) file for details on various available licenses.

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc
