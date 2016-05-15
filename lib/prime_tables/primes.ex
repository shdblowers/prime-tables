defmodule PrimeTables.Primes do

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
