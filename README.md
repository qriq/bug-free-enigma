# MultiTransfer

This is a Solidity smart contract that allows for the transfer of ERC20 tokens to multiple recipients at once.

## Requirements

- Solidity ^0.8.0

## Usage

To use the contract, follow these steps:

1. Deploy the contract to the Ethereum network.
2. Approve the contract to spend the ERC20 tokens you wish to transfer.
3. Call the `transferTokens` function, passing in two arrays:
  - `_recipients`: An array of Ethereum addresses to send the tokens to.
  - `_amounts`: An array of amounts of tokens to send to each recipient.

## Example

```
// Deploy the contract, passing in the address of the ERC20 token to transfer
MultiTransfer transferContract = new MultiTransfer(0x1234567890123456789012345678901234567890);

// Approve the transfer contract to spend the ERC20 tokens
ERC20 token = ERC20(0x1234567890123456789012345678901234567890);
token.approve(address(transferContract), 1000);

// Call the transferTokens function to transfer tokens to two recipients
address[] memory recipients = new address;
recipients[0] = 0x1234567890123456789012345678901234567891;
recipients[1] = 0x1234567890123456789012345678901234567892;
uint256[] memory amounts = new uint256;
amounts[0] = 500;
amounts[1] = 500;
transferContract.transferTokens(recipients, amounts);
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)