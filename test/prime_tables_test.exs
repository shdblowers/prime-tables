defmodule PrimeTablesTest do
  use ExUnit.Case, async: true

  import PrimeTables
  import ExUnit.CaptureIO

  test "get prime multiplication table from user input" do
    result = capture_io fn ->
      PrimeTables.main(["3"])
    end

    assert result ==
    """
    |   |  2 |  3 |  5 |
    | 2 |  4 |  6 | 10 |
    | 3 |  6 |  9 | 15 |
    | 5 | 10 | 15 | 25 |
    """
  end
end
