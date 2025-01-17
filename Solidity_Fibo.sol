// Licencia
// SPDX-License-Identifier: LGPL-3.0-only

// Versión de Solidity que compila el Smart Contract
pragma solidity 0.8.24;

// Definición del contrato
contract Solidity_Fibo {
    // Declaración de variables
    uint256 [] fibo;
    // Modifiers
    modifier checkMoreThanTwo (uint256 input) {
        if(input <= 2) revert();
        _;
    }

    modifier checkInRange (uint256 input) {
        if(input >= fibo.length || input < 0) revert();
        _;
    }

    modifier fiboGenerated () {
        if(fibo.length == 0) revert();
        _;
    }
    // Events
    event FibonacciGenerated(uint256 [] fibo);
    // Functions [(function) + nombre + argumentos + visibilidad + mofificadores + returns + outputs]

    // - External
    function generateFibonacci(uint256 num1_) public checkMoreThanTwo(num1_) returns(uint256 [] memory) {
        fibonacci_logic(num1_);
        return fibo;
    }

    function getSequence() public fiboGenerated view returns(uint256 [] memory) {
        return fibo;
    }

    function getFibonacci(uint256 input_) public checkInRange(input_) fiboGenerated view returns(uint256 resultado) {
        return fibo[input_];
    }
    // - Internal
    function fibonacci_logic (uint256 num1_) internal {
        uint256 a = 0;
        uint256 b = 1;
        uint256 c;
        fibo.push(a);
        fibo.push(b);
        for(uint256 i = 2; i < num1_; i++) {
            c = a + b;
            fibo.push(c);
            a = b;
            b = c;
        }
        emit FibonacciGenerated(fibo);
    }
}