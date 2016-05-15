defmodule PrimesTest do
  use ExUnit.Case, async: true

  import PrimeTables.Primes

  test "knows 1 is not a prime" do
    assert is_prime?(1) == false
  end

  test "knows 2 is a prime" do
    assert is_prime?(2) == true
  end

  test "knows 3 is a prime" do
    assert is_prime?(2) == true
  end

  test "knows 87 is not a prime" do
    assert is_prime?(87) == false
  end

  test "knows 101 is a prime" do
    assert is_prime?(101) == true
  end

end
