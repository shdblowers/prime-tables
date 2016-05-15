defmodule PrimeTables.Tables do

  def create_multiplication_table(columns, rows) do
    [[],[]]
  end

  def create_multiplication_row(multiplier, list) do
    Enum.map(list, fn(x) -> x * multiplier end)
  end

end
