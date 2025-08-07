defmodule TodoActorProjectTest do
  use ExUnit.Case
  doctest TodoActorProject

  test "greets the world" do
    assert TodoActorProject.hello() == :world
  end
end
