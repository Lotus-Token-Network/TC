pragma solidity ^0.4.15;

/**
 * Mixin interface for expressing ownership only permissions of contracts.
 * 
 * For now ownership is a simple concept. Whoever creates the token is the owner.
 * This can be extend with a list of addresses or more complex rules to determine ownership.
 */
contract owned {
    address public owner;

    /**
     * The owner is set to the creator
     */
    function owned() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

/**
 * ERC Token Standard #20 Interface
 * https://github.com/ethereum/EIPs/issues/20
  */
contract ERC20Interface {
    // Get the total token supply
    function totalSupply() public constant returns (uint256 supply);
    // Get the account balance of another account with address _owner
    function balanceOf(address _owner) public constant returns (uint256 balance);
    // Send _value amount of tokens to address _to
    function transfer(address _to, uint256 _value) public returns (bool success);
    // Send _value amount of tokens from address _from to address _to
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
    // Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    // If this function is called again it overwrites the current allowance with _value.
    // this function is required for some DEX functionality
    function approve(address _spender, uint256 _value) public returns (bool success);
    // Returns the amount which _spender is still allowed to withdraw from _owner
    function allowance(address _owner, address _spender) public constant returns (uint256 remaining);
    // Triggered when tokens are transferred.
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    // Triggered whenever approve(address _spender, uint256 _value) is called.
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

/**
 * ERC20 compatible contract definition for Lotus Token.
 * 
 * see: https://theethereum.wiki/w/index.php/ERC20_Token_Standard
 */
contract LtkToken is owned, ERC20Interface {
    // ERC20 constants for displaying the token in wallets
    // Display name of the token
    string public constant name = "Lotus Token";
    // Display symbol of the token
    string public constant symbol = "LTK";
    // How many decimal places are shown for this token. 18 decimals is recommended so we use that. 
    uint8 public decimals = 18;
    
    // Account balance mappings. Holds the balance for each account.
    mapping (address => uint256) internal balances;
    // Keep track of the total supply of tokens to avoid computing it over all account balances. This presumably saves some gas.
    uint256 internal tokenSupply;
    
    /* Initializes contract with initial supply tokens to the creator of the contract */
    function LtkToken(uint256 initialSupply) ERC20Interface() public {
        tokenSupply = initialSupply;
        balances[msg.sender] = tokenSupply;              // Give the creator all initial tokens
    }


    /* Internal transfer, only can be called by this contract */
    function _transfer(address _from, address _to, uint _value) internal {
        require(_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
        require(balances[_from] > _value);                // Check if the sender has enough
        require (balances[_to] + _value > balances[_to]); // Check for overflows
        balances[_from] -= _value;                         // Subtract from the sender
        balances[_to] += _value;                           // Add the same to the recipient
        Transfer(_from, _to, _value);
    }

    // ERC20 required functions and events
    function totalSupply() public constant returns (uint256 supply) {
        return tokenSupply;
    }
    
    function balanceOf(address _owner) public constant returns (uint256 balance) {
        return balances[_owner];
    }
    
    function transfer(address _to, uint256 _value) public returns (bool success) {
        _transfer(msg.sender, _to, _value);
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        _transfer(_from, _to, _value);
        return true;
    }
    
    function approve(address _spender, uint256 _value) public returns (bool success) {
        // For now everything is approved.
        Approval(msg.sender, _spender, _value);
        return true;
    }
    
    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
        // For now any account is allowed to withdraw everything from any other account.
        return _spender != 0 ? balances[_owner] : 0;
    }
}
