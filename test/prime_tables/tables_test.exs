defmodule TablesTest do
  use ExUnit.Case, async: true

  import PrimeTables.Tables

  test "can create a multiplication table" do
    assert create_multiplication_table([1, 2, 3], [5, 10]) ==
      [
        [ nil,  1,  2,  3],
        [   5,  5, 10, 15],
        [  10, 10, 20, 30]
      ]
  end

  test "can create a single multiplication row" do
    assert create_multiplication_row(2, [3, 4, 5]) == [6, 8, 10]
  end

end
