defmodule Greet do
  def ask_name do
    name = IO.gets("Enter your name: ") |> String.trim()
    case name do
      "Alice" -> IO.puts("Hi Alice, welcome back!")
      "Bob"   -> IO.puts("Hey Bob, good to see you!")
      _       -> IO.puts("Hello, #{name}!")
    end
  end
end

IO.puts("🚀 Welcome to Elixir!")
Greet.ask_name()
