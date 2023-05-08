defmodule DivideTwoIntegersTest do
  use ExUnit.Case

  alias DivideTwoIntegers.Solution

  describe "divide/2" do
    test "return the quotient after dividing dividend by divisor" do
      dividend = 10
      divisor = 3

      assert Solution.divide(dividend, divisor) == 3

      dividend = 7
      divisor = -3

      assert Solution.divide(dividend, divisor) == -2
    end
  end
end
