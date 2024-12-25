// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ClassRecordBook {
    uint256 itemPrice;

    struct Students {
        string studentName;
        uint256 studentAge;
    }

    Students[] public students;

    mapping(string => uint256) public nameToAge;

   

    function addItems(string memory _studentName, uint256 _studentAge) public {
        students.push(Students({studentAge: _studentAge, studentName: _studentName}));
        nameToAge[_studentName] = _studentAge;
    }
}
