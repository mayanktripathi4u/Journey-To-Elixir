defmodule Hello do
  def world do
    IO.puts("Hello, Elixir World!")
  end

  def world(name) do
    IO.puts("Hello, #{name}!")
  end
end

Hello.world()
Hello.world
Hello.world("Alice")
Hello.world "Bob"
