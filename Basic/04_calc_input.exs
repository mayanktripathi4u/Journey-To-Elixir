defmodule CLI_Calc do
  def start do
    a = IO.gets("Enter number 1: ") |> String.trim() |> String.to_integer()
    b = IO.gets("Enter number 2: ") |> String.trim() |> String.to_integer()
    op = IO.gets("Enter operation (+, -, *, /): ") |> String.trim()

    result = case op do
      "+" -> a + b
      "-" -> a - b
      "*" -> a * b
      "/" -> if b == 0, do: "Divide by zero!", else: a / b
      _   -> "Unknown operation"
    end

    IO.puts("Result: #{result}")
  end
end

CLI_Calc.start()
