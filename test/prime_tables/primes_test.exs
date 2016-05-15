defmodule PrimesTest do
  use ExUnit.Case, async: true

  import PrimeTables.Primes

  test "gets first prime number" do
    assert get_first_n_primes(1) == [2]
  end

  test "gets first three prime numbers" do
    assert get_first_n_primes(3) == [2, 3, 5]
  end

  test "gets first ten prime numbers" do
    assert get_first_n_primes(10) ==
      [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  end

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
