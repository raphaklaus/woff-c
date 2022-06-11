defmodule WoffCTest do
  use ExUnit.Case
  doctest WoffC

  test "greets the world" do
    assert WoffC.hello() == :world
  end
end
