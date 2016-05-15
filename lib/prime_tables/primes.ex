defmodule PrimeTables.Primes do

  def get_first_n_primes(number) do
    2
    |> Stream.iterate(&get_next_prime(&1))
    |> Enum.take(number)
  end

  defp get_next_prime(number) do
    number + 1
    |> Stream.iterate(&(&1+1))
    |> Enum.find(&is_prime?(&1))
  end

  def is_prime?(number) do
    case number do
      1 -> false
      2 -> true
      3 -> true
      _ -> not Enum.any?((number - 1)..2, fn(x) ->
        rem(number, x) == 0
      end)
    end
  end

end
