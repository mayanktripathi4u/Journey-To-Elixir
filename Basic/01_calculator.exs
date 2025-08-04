defmodule SimpleCalc do
  def calculator(:add, a, b), do: a + b
  def calculator(:sub, a, b), do: a - b
  def calculator(:mul, a, b), do: a * b
  def calculator(:div, a, b) when b != 0, do: a / b
  def calculator(:div, _, 0), do: "Cannot divide by zero"
  def calculator(_, _, _), do: "Unknown operation"
end

IO.inspect(SimpleCalc.calculator(:add, 10, 5))   # 15
IO.inspect(SimpleCalc.calculator(:div, 10, 0))   # Error message
