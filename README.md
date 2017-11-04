# LOTUS TOKEN NETWORK Smart Contract

The Lotus Token Network Smart Contract is being coded using Solidity, the [contract-oriented high-level programming language](https://solidity.readthedocs.io/en/develop/) designed to target the Ethereum Virtual Machine (EVM).

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

To join the development, you will need to have:
1. Have a good knowledge about Blockchain technology
2. A programmer that have good understanding and experience using JavaScript
3. Have read about Ethereum and Solidity



4. Have a text editor
2. MetaMask Extension for Chrome
3. Mist or Browser-based Ethereum Wallet

```
For browser-based: Go to https://wallet.ethereum.org
```

4. Connection to Rinkeby Test NETWORK


## Current Status

The code is being tested using Rinkeby TestNet.

The dev-team finished coding the aspects on the following areas:
1. Token Creation
2. Inclusion of three crowd sale periods
3. Distribution of tokens for each contributed ether.

### Token Creation

The token creation aspect initializes the token count to zero (0) and presents a Total Supply form field on the smart contract deployment platform.

### Three Crowd Sale Periods

Separate form fields are presented to accept token supply values for the three crowd-sale periods.
Each of these include another form field where the ether token value is to be fed.  

### Token Transfer

Based on the parameters set during the token creation, members of the dev-team and volunteer testers could then send test ethers to the smart contract address in exchange for tokens.

## Next Coding Target

As of November 04, 2017, the core-dev team is tweaking the limits set for each of the crowd-sale period so that once the limit is reached, the first processed ether sent - that would exceed the token supply limit - will have a subroutine where the value of ether equivalent to the amount of token supply left will be subtracted from the total ether sent. The rest will be transferred back to the sender.

```
For example, the total supply is 1000 and 1 ether is equivalent to 200 tokens. 900 tokens were already sold to various backers. Jill (another backer) then sent 1 more ether. The smart contract will then perform a subroutine that will accept half (0.5) ether - equivalent to 100 tokens - then transfer back the other half (0.5) ether to Jill.
```

## Built With

* [ATOM](https://atom.io/) - The text editor being used
* [Mist](https://github.com/ethereum/mist/releases) - Downloadable Ethereum Wallet and Solidity deployment platform
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

We are currently basing our Contributing code of conduct and pull request submission process on the one found at  [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426).

## Version Control

We use GitHub's built-in versions control system.

## Authors

* **Michael De Guzman** - *Team Leader*

* **Dondi Imperial** - *Senior Developer*

* **Mahlory Ambrosio** - *Junior Developer*

* **Samuel T Sendon II** - *Initial Setup of [Lotus Token Network](https://github.com/Lotus-Token-Network) organization on GitHub; Documentation Manager*

See also the list of [contributors](https://github.com/Lotus-Token-Network/TC/graphs/contributors) who participated in this project.

## License

License for this project is still being discussed but the team is leaning toward going open-source. See the [LICENSE.md](LICENSE.md) file for details on various available licenses.

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc
