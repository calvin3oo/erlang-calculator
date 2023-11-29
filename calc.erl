% src/calculator.erl
-module(calc).
-export([add/2, subtract/2, multiply/2, divide/2, factorial/1]).

% Addition
add(X, Y) -> X + Y.

% Subtraction
subtract(X, Y) -> X - Y.

% Multiplication
multiply(X, Y) -> X * Y.

% Division, rounded to two decimal places
divide(X, Y) when Y /= 0 -> io:format("Result: ~p~n", [round((X * 100) / Y ) / 100 ]);
divide(_, _) -> {error, "Division by zero"}.

% Recursivley print a factorial of a number
factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).