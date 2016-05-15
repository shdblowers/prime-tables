defmodule PrimeTables.Tables do

  def create_multiplication_table(same) do
    create_multiplication_table(same, same)
  end
  def create_multiplication_table(columns, rows) do
      [[nil] ++ columns] ++
      Enum.map(rows, &create_multiplication_row(&1, [1] ++ columns))
  end

  def create_multiplication_row(multiplier, list) do
    Enum.map(list, fn(x) -> x * multiplier end)
  end

end
