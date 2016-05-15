defmodule PrettyPrintTest do
  use ExUnit.Case, async: true

  import PrimeTables.PrettyPrint
  import ExUnit.CaptureIO

  test "prints array in correct format" do
    result = capture_io fn ->
      print_array([1, 5, 10], [2, 2, 2])
    end

    assert result ==
    """
    |  1 |  5 | 10 |
    """
  end

end
