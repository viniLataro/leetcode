defmodule AddBinary.Solution do
  @moduledoc """
  Given two binary strings a and b, return their sum as a binary string.

  Example:

  Input: a = "11", b = "1"
  Output: "100"

  Input: a = "1010", b = "1011"
  Output: "10101"
  """

  @base 2

  @spec add_binary(a :: String.t(), b :: String.t()) :: String.t()
  def add_binary(a, b) do
    {a, _} = Integer.parse(a, @base)
    {b, _} = Integer.parse(b, @base)

    Integer.to_string(a + b, @base)
  end
end
