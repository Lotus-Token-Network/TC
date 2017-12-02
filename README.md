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
7. Improved auto-transfer mechanism to specify various wallet addresses.
8. Replaced the auto-transfer mechanism with manual withdrawal for added security.
9. Configuration to include a Minimum Cap and Maximum Cap for buyers on each of the three crowdsale periods.
10.Configuration to include Individual Hard Cap.

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

To start the Presale, the contract admin will have to manually execute it. Once each crowd-sale period reaches the limit, it will require a Stop Function to disallow additional contributions. To proceed with the next ICO period, the admin will manually execute the function that starts it.

### 6. Auto-transfer Collected ETHs to A Destination Wallet

The process that transfers collected funds into another wallet is now enabled, but will be tweaked to reflect the budget allocation chart... From the chart, a collection of single and multi-signature accounts will be added into the code.

### 7. Distribute collected ETH into various single and multi-sig wallet contracts.

Routine to distribute or transfer collected ETHs from crowd-sale to various addresses based on the whitepaper's budget allocation chart (thus making this a full-pledged smart contract).

### 8. Replaced the auto-transfer mechanism with manual withdrawal for added security.

Manual withdrawal of fund allocations remove the risk or vulnerability to re-entrancy attacks.

### 9. Configuration to include a Minimum Cap and Maximum Cap for buyers on each of the three crowd sale periods.

Minimum cap for each of the crowd sale periods is set to 0.2 Ethers to reduce the possible load of the Main Network. Maximum cap is varied from one crowd sale period to another.

### 10. Configuration to include Individual Hard Cap.

Individual hard cap is included to reduce the possibility of whale-like activities that could have negative effect on the growth of the utility token's value.

### 11. Setup of Stop functions after each crowd sale period.

This allows the smart contract administrator to manually stop a crowd sale period as soon as the deadline is reached.

### 12. Inclusion of vesting period for distribution of token compensations for pre-ICO developments.

These are taken from unsold tokens during the crowd sale proportional to the pre-determined values as found on the whitepaper's fund allocation chart (2% each for the two concept designers, 2% each for the four developers, 1% for branding, 4% for each of the three primary shareholders, 75% to be sent to the Lotus Token Multi-sig Wallet)

## Next Coding Target

1. Plan out the Airdrop process.



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
