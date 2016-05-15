defmodule PrimeTables.PrettyPrint do

  def print_array(array, column_widths) do
    :io.fwrite(format_for(column_widths), array)
  end

  def format_for(column_widths) do
    "| " <> Enum.map_join(column_widths, " | ", fn width -> "~#{width}B" end) <> " |~n"
  end

end
