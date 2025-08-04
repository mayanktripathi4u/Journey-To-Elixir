defmodule Greet do
  def hello(name), do: "Hello, #{name}!"
end

IO.puts Greet.hello("Mayank")
