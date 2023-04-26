defmodule ReverseInteger.Solution do
  @moduledoc """
  Given a signed 32-bit integer x, return x with its digits reversed.

  Example:

  Input: x = 123
  Output: 321

  Input: x = -123
  Output: -321

  Input: x = 120
  Output: 21
  """

  @spec reverse(x :: integer) :: integer
  def reverse(x) do
    reversed_x =
      Integer.digits(x)
      |> Enum.reverse()
      |> Integer.undigits()

    if reversed_x > Integer.pow(-2, 31) && reversed_x < Integer.pow(2, 31) - 1 do
      reversed_x
    else
      0
    end
  end
end
