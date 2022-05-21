defmodule ExcommaTest do
  use ExUnit.Case
  doctest Excomma

  test "greets the world" do
    assert Excomma.hello() == :world
  end
end
