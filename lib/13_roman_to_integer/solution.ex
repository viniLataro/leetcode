defmodule RomanToInteger.Solution do
  @moduledoc """
  Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

  Symbol       Value
  I             1
  V             5
  X             10
  L             50
  C             100
  D             500
  M             1000

  Given a roman numeral, convert it to an integer.

  Example:

  Input: s = "III"
  Output: 3
  Explanation: III = 3.
  """

  @spec roman_to_int(s :: String.t()) :: integer
  def roman_to_int(s) do
    convert(s, 0)
  end

  defp convert("", acc), do: acc

  defp convert("IV" <> rest, acc), do: convert(rest, acc + 4)
  defp convert("IX" <> rest, acc), do: convert(rest, acc + 9)
  defp convert("XL" <> rest, acc), do: convert(rest, acc + 40)
  defp convert("XC" <> rest, acc), do: convert(rest, acc + 90)
  defp convert("CD" <> rest, acc), do: convert(rest, acc + 400)
  defp convert("CM" <> rest, acc), do: convert(rest, acc + 900)

  defp convert("I" <> rest, acc), do: convert(rest, acc + 1)
  defp convert("V" <> rest, acc), do: convert(rest, acc + 5)
  defp convert("X" <> rest, acc), do: convert(rest, acc + 10)
  defp convert("L" <> rest, acc), do: convert(rest, acc + 50)
  defp convert("C" <> rest, acc), do: convert(rest, acc + 100)
  defp convert("D" <> rest, acc), do: convert(rest, acc + 500)
  defp convert("M" <> rest, acc), do: convert(rest, acc + 1000)
end
