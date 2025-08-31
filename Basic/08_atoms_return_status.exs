defmodule AtomsReturnStatus do
  @moduledoc """
  Example of using atoms as return status in Elixir.
  """

  @doc """
  Divides two numbers and returns an atom indicating success or failure.
  """
  def divide(a, b) do
      if b == 0 do
        # {:error, :"Division by zero"}
        {:error, :division_by_zero}
      else
        {:ok, a / b}
      end
  end
end

case AtomsReturnStatus.divide(10, 0) do
  {:ok, result} ->
    IO.puts("Result: #{result}")
  {:error, reason} ->
    IO.puts("Error: #{reason}")
end
