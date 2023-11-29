% src/calculator.erl
-module(calculator).
-export([add/2, subtract/2, multiply/2, divide/2]).

% Addition
add(X, Y) -> X + Y.

% Subtraction
subtract(X, Y) -> X - Y.

% Multiplication
multiply(X, Y) -> X * Y.

% Division
divide(X, Y) when Y /= 0 -> X / Y;
divide(_, _) -> {error, "Division by zero"}.
