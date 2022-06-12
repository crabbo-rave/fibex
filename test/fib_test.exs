defmodule FibTest do
  use ExUnit.Case

  doctest Fib

  @result [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584,
  4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229,
  832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817,
  39088169, 63245986, 102334155]

  test "fib_rec" do
    assert (for n <- 1..40 do Fib.fib_rec(n) end) == @result
  end

  test "fib_case" do
    assert (for n <- 1..40 do Fib.fib_case(n) end) == @result
  end

  test "fib_iter" do
    assert (for n <- 1..40 do Fib.fib_iter(n) end) == @result
  end

  test "fib_anyl" do
    assert (for n <- 1..40 do Fib.fib_anyl(n) end) == @result
  end
end
