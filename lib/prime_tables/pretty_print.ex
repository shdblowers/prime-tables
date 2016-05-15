defmodule PrimeTables.PrettyPrint do

  def print_2D_array(arrays) do
    Enum.each(arrays, &print_array(&1, find_column_widths(arrays)))
  end

  def print_array(array, column_widths) do
    :io.fwrite(format_for(column_widths), array)
  end

  def format_for(column_widths) do
    "| " <> Enum.map_join(column_widths, " | ", fn width -> "~#{width}B" end) <> " |~n"
  end

  def find_column_widths(arrays) do
    arrays
    |> List.zip
    |> List.foldl([], fn(tuple, acc) ->
      acc ++ [String.length(to_string(Enum.max(Tuple.to_list(tuple))))]
    end)
  end

end
