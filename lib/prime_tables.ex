defmodule PrimeTables do

  def main(argv) do
    argv
    |> hd
    |> String.to_integer
    |> PrimeTables.Primes.get_first_n_primes
    |> PrimeTables.Tables.create_multiplication_table
    |> PrimeTables.PrettyPrint.print_2D_array
  end

end
