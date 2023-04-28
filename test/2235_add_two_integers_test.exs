defmodule AddTwoIntegersTest do
  use ExUnit.Case

  alias AddTwoIntegers.Solution

  describe "sum/2" do
    test "Return the sum of the two integers" do
      num1 = 12
      num2 = 5

      assert Solution.sum(num1, num2) == 17

      num1 = -10
      num2 = 4

      assert Solution.sum(num1, num2) == -6
    end
  end
end
