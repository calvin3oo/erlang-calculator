% src/calculator.erl
-module(calc).
-export([add/2, subtract/2, multiply/2, divide/2]).

% Addition
add(X, Y) -> X + Y.

% Subtraction
subtract(X, Y) -> X - Y.

% Multiplication
multiply(X, Y) -> X * Y.

% Division, rounded to two decimal places
divide(X, Y) when Y /= 0 -> io:format("Result: ~p~n", [round((X * 100) / Y ) / 100 ]);
divide(_, _) -> {error, "Division by zero"}.