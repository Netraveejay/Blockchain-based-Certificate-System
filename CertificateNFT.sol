// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CertificateNFT {
    string public name = "CertificateNFT";
    string public symbol = "CERT";
    uint256 public tokenCounter;
    address public owner;

    struct Certificate {
        string certificateId;
        address recipient;
    }

    mapping(uint256 => Certificate) public certificates;
    mapping(uint256 => address) private _owners;
    mapping(address => uint256) private _balances;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    constructor() {
        owner = msg.sender;
        tokenCounter = 1;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return _balances[_owner];
    }

    function ownerOf(uint256 tokenId) public view returns (address) {
        address tokenOwner = _owners[tokenId];
        require(tokenOwner != address(0), "Token does not exist");
        return tokenOwner;
    }

    function _mint(address to, uint256 tokenId) internal {
        require(to != address(0), "Cannot mint to zero address");
        require(_owners[tokenId] == address(0), "Token already exists");

        _owners[tokenId] = to;
        _balances[to] += 1;

        emit Transfer(address(0), to, tokenId);
    }

    function issueCertificate(address _recipient, string memory _certificateId) public onlyOwner {
        uint256 newTokenId = tokenCounter;
        _mint(_recipient, newTokenId);

        certificates[newTokenId] = Certificate({
            certificateId: _certificateId,
            recipient: _recipient
        });

        tokenCounter++;
    }

    function verifyCertificate(uint256 _tokenId, address _wallet) public view returns (bool) {
        Certificate memory cert = certificates[_tokenId];
        return cert.recipient == _wallet;
    }
}
