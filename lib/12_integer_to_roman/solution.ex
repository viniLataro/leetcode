defmodule IntegerToRoman.Solution do
  @moduledoc """
  Roman numerals are represented by seven different symbols:

  Symbol       Value
  I             1
  V             5
  X             10
  L             50
  C             100
  D             500
  M             1000

  Given an integer, convert it to a roman numeral.
  """

  @mapping [
    {1000, "M"},
    {900, "CM"},
    {500, "D"},
    {400, "CD"},
    {100, "C"},
    {90, "XC"},
    {50, "L"},
    {40, "XL"},
    {10, "X"},
    {9, "IX"},
    {5, "V"},
    {4, "IV"},
    {1, "I"}
  ]

  @spec int_to_roman(num :: integer) :: String.t()
  def int_to_roman(num) do
    @mapping
    |> Enum.reduce({num, []}, fn {decimal, roman}, {num, acc} ->
      {rem(num, decimal), [acc | List.duplicate(roman, div(num, decimal))]}
    end)
    |> elem(1)
    |> IO.iodata_to_binary()
  end
end
