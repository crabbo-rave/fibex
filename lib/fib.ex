defmodule Fib do
  def fib_rec(n) when n in 0..1, do: n
  def fib_rec(n) when is_integer(n) and n > 1, do: fib_rec(n-1) + fib_rec(n-2)

  def fib_case(n) when is_integer(n) and n >= 0 do
    case n do
      0 -> 0
      1 -> 1
      n -> fib_case(n-1) + fib_case(n-2)
    end
  end

  def fib_iter(0), do: 0
  def fib_iter(n) when n in 1..2, do: 1
  def fib_iter(n) when n > 2, do: Enum.reduce(2 .. (n-1), {1, 1}, fn _, {m2, m1} -> {m1, m1+m2} end) |> elem(1)

  def fib_anyl(n) when n in 0..1, do: n
  def fib_anyl(n) when is_integer(n) and n > 1 do
    phi = (1 + :math.sqrt(5)) / 2
    (Float.pow(phi, n) - Float.pow(phi, -n)) / :math.sqrt(5)
    |> round()
  end

  def fib(n) do
    round((Float.pow(1.618, n) - Float.pow(0.618, n)) / :math.sqrt(5))
  end
end
