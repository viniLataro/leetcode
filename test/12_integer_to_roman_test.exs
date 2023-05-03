defmodule IntegerToRomanTest do
  use ExUnit.Case

  alias IntegerToRoman.Solution

  describe "int_to_roman/1" do
    test "given an integer convert it to a roman numeral" do
      num = 3

      assert Solution.int_to_roman(num) == "III"

      num = 58

      assert Solution.int_to_roman(num) == "LVIII"

      num = 1994

      assert Solution.int_to_roman(num) == "MCMXCIV"
    end
  end
end
