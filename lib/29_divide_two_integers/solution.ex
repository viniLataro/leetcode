defmodule DivideTwoIntegers.Solution do
  @moduledoc """
  Given two integers dividend and divisor, divide two integers
  without using multiplication, division, and mod operator.

  The integer division should truncate toward zero, which means
  losing its fractional part.

  Return the quotient after dividing dividend by divisor.

  Example:

  Input: dividend = 10, divisor = 3
  Output: 3
  Explanation: 10/3 = 3.33333.. which is truncated to 3.
  """

  @spec divide(dividend :: integer, divisor :: integer) :: integer
  def divide(dividend, divisor) do
    trunc(dividend / divisor)
    |> clamp
  end

  @min Integer.pow(-2, 31)
  @max Integer.pow(2, 31) - 1

  defp clamp(x) when x < @min, do: @min
  defp clamp(x) when x > @max, do: @max
  defp clamp(x), do: x
end
