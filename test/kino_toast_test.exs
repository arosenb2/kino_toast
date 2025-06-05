defmodule Kino.Toast.Test do
  use ExUnit.Case
  doctest Kino.Toast

  test "creates the toast component" do
    %Kino.JS.Live{module: module} = Kino.Toast.new()
    assert module == Kino.Toast
  end
end
