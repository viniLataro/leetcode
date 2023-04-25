defmodule RomanToIntegerTest do
  use ExUnit.Case

  alias RomanToInteger.Solution

  describe "roman_to_int/1" do
    test "given a roman numeral, convert it to an integer" do
      s = "III"

      assert Solution.roman_to_int(s) == 3

      s = "LVIII"

      assert Solution.roman_to_int(s) == 58

      s = "MCMXCIV"

      assert Solution.roman_to_int(s) == 1994
    end
  end
end
