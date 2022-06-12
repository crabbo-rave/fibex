defmodule F do
  defmacro i(c, i, e) do
    quote do
      if(unquote(c), do: unquote(i), else: unquote(e))
    end
  end

  defmacro d(n, b) do
    quote do
      def(unquote(n), do: unquote(b))
    end
  end
end

defmodule G do
  import F
  d(f(n),i(n<=1,n,f(n-1)+f(n-2)))
end
