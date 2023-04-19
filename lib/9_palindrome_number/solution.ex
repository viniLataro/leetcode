defmodule PalindromeNumber.Solution do
  @moduledoc """
  Given an integer x, return true if x is a
  palindrome, and false otherwise.

  Example:
  Input: x = 121
  Output: true
  Explanation: 121 reads as 121 from left to right and from right to left.
  """

  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) when x < 0, do: false

  def is_palindrome(x) when x < 10, do: true

  def is_palindrome(x) do
    reversed_x =
      x
      |> Integer.digits()
      |> Enum.reverse()
      |> Integer.undigits()

    x === reversed_x
  end
end
