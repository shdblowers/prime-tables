defmodule PrimeTables.PrettyPrint do

  def print_2D_array(arrays) do
    Enum.each(arrays, &print_array(&1, find_column_widths(arrays)))
  end

  def print_array(array, column_widths) do
    :io.fwrite(format_for(column_widths), Enum.map(array, &to_string(&1)))
  end

  defp format_for(column_widths) do
    "| " <> Enum.map_join(column_widths, " | ", fn width -> "~#{width}s" end) <> " |~n"
  end

  defp find_column_widths(arrays) do
    arrays
    |> List.zip
    |> List.foldl([], fn(tuple, acc) ->
      acc ++ [Enum.max(Enum.map(Tuple.to_list(tuple), fn(x) ->
        String.length(to_string(x))
      end))]
    end)
  end

end
