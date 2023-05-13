defmodule PowerOfTwoTest do
  use ExUnit.Case

  alias PowerOfTwo.Solution

  describe "is_power_of_two/1" do
    test "return true if it is a power of two" do
      assert Solution.is_power_of_two(1) == true
      assert Solution.is_power_of_two(16) == true
    end

    test "otherwise return false" do
      assert Solution.is_power_of_two(3) == false
    end
  end
end
