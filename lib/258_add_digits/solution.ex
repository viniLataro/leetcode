defmodule AddDigits.Solution do
  @moduledoc """
  Given an integer num, repeatedly add all its digits until the result
  has only one digit, and return it.

  Example:

  Input: num = 38
  Output: 2
  Explanation: The process is
  38 --> 3 + 8 --> 11
  11 --> 1 + 1 --> 2
  Since 2 has only one digit, return it.
  """

  @spec add_digits(num :: integer) :: integer
  def add_digits(num) do
    recursive_sum(num)
  end

  def recursive_sum(num) when num < 10 do
    num
  end

  def recursive_sum(num) do
    num
    |> Integer.digits()
    |> Enum.sum()
    |> recursive_sum()
  end
end
