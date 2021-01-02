pragma solidity ^0.6.0;

import './IConditionalTokens.sol';

contract Contractoracle {
  address myDefiProject;
  IConditionalTokens conditionalTokens;
  uint public pastBlockTime;  

  

  constructor(address _myDefiProject, address _conditionalTokens) public {
    myDefiProject = _myDefiProject;
    conditionalTokens = IConditionalTokens(_conditionalTokens);
  }

  function reportPayout(bytes32 questionId) external {
    payouts = [0,1,0];
    pastBlockTime = block.timestamp;

    require(block.timestamp == pastBlockTime + 2 days );
    conditionalTokens.reportPayouts(questionId, payouts);
  }
}
