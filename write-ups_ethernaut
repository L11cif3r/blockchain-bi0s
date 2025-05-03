#write-ups

Level 0: Hello Ethernaut
Goal: Understand the Ethernaut framework.
Solution: Deploy the level instance and submit it.
Key Concept: Familiarization with smart contract interactions.


Level 1: Fallback
Goal: Become the contract owner.
Solution:
Call contribute() with a small amount (<0.001 ETH).
Send ETH directly to the contract to trigger the fallback function.
Key Concept: Misuse of fallback functions can lead to unauthorized ownership changes.
Reference: Blogs, Walkthrough


Level 2: Fallout
Goal: Claim ownership.
Solution: Call the misnamed constructor function Fal1out().
Key Concept: Constructors with incorrect names remain callable, posing security risks.


Level 3: Coin Flip
Goal: Predict coin flips correctly.
Solution: Replicate the contract's randomness logic to predict outcomes.
Key Concept: On-chain randomness can be predictable and exploitable.


Level 4: Telephone
Goal: Become the contract owner.
Solution: Call changeOwner() from another contract to ensure msg.sender != tx.origin.
Key Concept: Relying on tx.origin for authentication is insecure.


Level 5: Token
Goal: Increase your token balance beyond the initial amount.
Solution: Exploit integer underflow by transferring more tokens than you possess.
Key Concept: Lack of proper arithmetic checks can lead to underflows.


Level 6: Delegation
Goal: Gain ownership.
Solution: Call the pwn() function via delegatecall through the fallback function.
Key Concept: delegatecall can execute code in the context of the calling contract, affecting its state.
Reference: Blogs, Walkthrough


Level 7: Force
Goal: Send ETH to a contract without a payable function.
Solution: Deploy a contract that self-destructs, forcing ETH into the target contract.
Key Concept: selfdestruct can forcibly send ETH to any address.


Level 8: Vault
Goal: Unlock the vault.
Solution: Read the private variable from storage slot 1 and use it to unlock.
Key Concept: Private variables are accessible on-chain and can be read directly.


Level 9: King
Goal: Become the king and prevent others from dethroning you.
Solution: Deploy a contract with a fallback function that reverts, preventing transfer.
Key Concept: Contracts can block ETH transfers by reverting in fallback functions.
Reference: Walkthroughs


Level 10: Re-entrancy
Goal: Drain the contract's funds.
Solution: Exploit the withdraw() function by recursively calling it before the balance is updated.
Key Concept: Re-entrancy attacks occur when external calls are made before state changes.
Reference: Blogs, Walkthrough


Level 11: Elevator
Goal: Reach the top floor.
Solution: Implement a contract that manipulates the return value of isLastFloor() to first return false, then true.
Key Concept: Interfaces can be exploited by controlling return values.


Level 12: Privacy
Goal: Unlock the contract.
Solution: Access the locked data from storage and use it to unlock.
Key Concept: Data marked as private is still accessible on-chain.


Level 13: Gatekeeper One
Goal: Pass through all three gates.
Solution:
Call from a contract to ensure msg.sender != tx.origin.
Adjust gas to satisfy gasleft() % 8191 == 0.
Craft a gateKey that meets specific bitwise conditions.
Key Concept: Combining multiple constraints can create complex security challenges.
Reference: dixitaditya blogs, Walkthrough


Level 14: Gatekeeper Two
Goal: Pass through all three gates.
Solution:
Call from a contract's constructor to ensure extcodesize == 0.
Compute a gateKey that satisfies the XOR condition with msg.sender.
Key Concept: Contract code size is zero during construction, which can be exploited.
Reference: Walkthroughs


Level 15: Naught Coin
Goal: Transfer tokens despite a 10-year lock.
Solution: Use approve() to authorize yourself, then transferFrom() to move tokens.
Key Concept: ERC20 transferFrom() can bypass custom transfer restrictions.
Reference: Walkthroughs


Level 16: Preservation
Goal: Gain ownership of the contract.
Solution: Exploit delegatecall to overwrite the library address, then execute a malicious setTime() to set yourself as owner.
Key Concept: delegatecall executes code in the context of the calling contract's storage.
Reference: dixitaditya blogs.


Level 17: Recovery
Goal: Recover Ether from a lost contract.
Solution: Calculate the address of the lost contract using the deployer's address and nonce, then call destroy() to retrieve funds.
Key Concept: Contract addresses can be predicted based on deployer address and nonce.


Level 18: Magic Number
Goal: Deploy a contract that returns 42 using minimal opcodes.
Solution: Write raw EVM bytecode that returns 42 and deploy it.
Key Concept: Understanding and writing minimal EVM bytecode.
Reference: Metana Walkthrough


Level 19: Alien Codex
Goal: Become the contract owner.
Solution: Exploit an underflow in the array length to overwrite storage and set yourself as owner.
Key Concept: Array underflow can lead to arbitrary storage writes.
Reference: Metana Walkthrough


Level 20: Denial
Goal: Prevent the contract from receiving funds.
Solution: Set a partner contract with a fallback function that consumes all gas, causing withdraw() to fail.
Key Concept: Denial-of-service via gas exhaustion in fallback functions.
Reference: Metana Walkthrough


Level 21: Shop
Goal: Buy an item for less than its price.
Solution: Implement a price() function that returns 100 on the first call and 0 on the second, exploiting the contract's logic.
Key Concept: Contracts can be tricked by state-dependent return values.
Reference: Metana Walkthrough


Level 22: Dex
Goal: Drain all tokens from the DEX.
Solution: Exploit the DEX's price calculation by performing a series of swaps that manipulate token balances.
Key Concept: Improper price calculations can be exploited for arbitrage.


Level 23: Dex Two
Goal: Drain all tokens from the DEX.
Solution: Introduce a malicious token with a transferFrom() function that always returns true, bypassing balance checks.
Key Concept: Trusting external token contracts can be dangerous.


Level 24: Puzzle Wallet
Goal: Become the admin and drain funds.
Solution: Exploit the multicall() function to perform nested calls, allowing multiple deposits and gaining admin rights.
Key Concept: Recursive calls can lead to unexpected state changes.


Level 25: Motorbike
Goal: Destroy the engine contract.
Couldn't solve it, as some issues were faced.


Level 26: Double Entry Point
Goal: Prevent the vault from accepting tokens.
Couldn't solve it, as some issues were there.


Level 27: Good Samaritan
Goal: Drain all funds from the wallet.
Solution: Trigger a specific error (NotEnoughBalance) to execute the fallback donation logic.
Key Concept: Error handling can be manipulated to alter contract behavior.
Reference: Medium Walkthrough


Level 28: Gatekeeper Three
Goal: Register as an entrant.
Solution: Satisfy multiple gate conditions involving caller identity, gas usage, and contract code size.
-Couldn't solve it, as some issues were faced.


Level 29: Switch
Goal: Turn on the switch.
Couldn't solve it, as some issues were there.


Level 30: Higher Order
Goal: Whitelist your address and drain the contract.
Solution: Exploit the delegatecall to call setWithdrawalPartner() from a contract you control. That contract should implement the pwn() function to whitelist you and allow withdrawals.
Key Concept: delegatecall lets you run your contract’s logic in the caller’s context, enabling you to manipulate storage.


Level 31: Stake
Goal: Drain the contract's ETH balance while meeting specific conditions.
Solution logic : Exploit the contract's handling of ETH and WETH staking to manipulate the totalStaked value. By staking WETH and then converting it to ETH, you can create a discrepancy between totalStaked and the actual ETH balance, allowing you to meet the level's completion criteria.
-But wasnt able to finish this challenge do some error on my side probably.
Reference: Blogs, Walkthrough


Level 32: Impersonator
Goal: Bypass signature verification to call a restricted function.
Didn't get to work on this.


Level 33: Magical Animal Carousel
Goal: Break the carousel's rule that the same animal must be present upon rechecking.
Didn't get to work on this.

