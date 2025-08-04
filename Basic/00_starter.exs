# 01_starter.exs
IO.puts("🚀 Welcome to Elixir!")

# --- Variables and Pattern Matching
name = "Mayank"
age = 28
IO.puts("Hello, #{name}. You are #{age} years old.")

# --- Arithmetic
sum = 10 + 20
product = 5 * 6
IO.puts("Sum is #{sum} and product is #{product}")

# --- Function definition
defmodule Math do
  def square(x), do: x * x
end

IO.puts("Square of 7 is #{Math.square(7)}")

# --- Conditionals
defmodule AgeCheck do
  def check(age) do
    if age >= 18 do
      "Adult"
    else
      "Minor"
    end
  end
end

IO.puts("Age status: #{AgeCheck.check(age)}")

# --- Lists and Enum
colors = ["red", "green", "blue"]
Enum.each(colors, fn color -> IO.puts("Color: #{color}") end)

# --- Tuples
person = {:john, 30, "Engineer"}
IO.puts("Person: #{elem(person, 0)}, Age: #{elem(person, 1)}, Profession: #{elem(person, 2)}")

# --- Map
person_map = %{name: "Alice", age: 25, profession: "Doctor"}
IO.puts("Map - Name: #{person_map[:name]}, Age: #{person_map[:age]}, Profession: #{person_map[:profession]}")

# --- Pattern Matching with Lists
list = [1, 2, 3, 4, 5]
[a, b | rest] = list
IO.puts("First two elements: #{a}, #{b}. Rest of the list: #{inspect(rest)}")
