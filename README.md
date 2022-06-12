# FibEx

Implementations of various fibonacci algorithms in Elixir

-----

Consists of the following algorithms:
- Recursive: 
  This uses the classic `fib(n-1)+fib(n+2)`. Extremely slow, but great for learning.
- Iterative (using `Enum.reduce`):
  Here we start with the tuple `{1, 1}`, and for as many times as `n-2`, we update the tuple to `{n-1, n-1+n-2}`, using `Enum.reduce` for an accumulator. This algorithm is definitely faster than the recursive one. 
- Analytical:
  Lastly, we have the fastest algorithm, using pure math with the golden ratio and an approximation of $\phi$.
