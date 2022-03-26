//SPDX-License-Identifier: UNLICENSED

pragma solidity >= 0.7.3;

contract HelloWorld {
    string public phrase;

    constructor(string memory _phrase) {
        phrase = _phrase;
    }

    event phraseChanged(
        string oldPhrase,
        string newPhrase
    );

    function updateMessage(string memory _newPhrase) public {
        string memory oldPhrase = phrase;
        phrase = _newPhrase;
        emit phraseChanged(oldPhrase, _newPhrase);
    }
}