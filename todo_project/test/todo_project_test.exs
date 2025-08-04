defmodule TodoProjectTest do
  use ExUnit.Case
  doctest TodoProject

  test "greets the world" do
    assert TodoProject.hello() == :world
  end
end
