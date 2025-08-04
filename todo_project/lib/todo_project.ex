defmodule TodoProject do
  @moduledoc """
  Documentation for `TodoProject`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TodoProject.hello()
      :world

  """
  def hello do
    :world
  end

  def new_list, do: []

  def add_task(list, task), do: list ++ [task]

  def show_tasks(list) do
    Enum.each(list, fn task -> IO.puts("- #{task}") end)
  end

end
