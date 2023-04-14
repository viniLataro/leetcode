defmodule TwoSumTest do
  use ExUnit.Case

  alias TwoSum.Solution

  describe "two_sum/2" do
    test "return indices of the two numbers that add up to target" do
      nums = [2, 7, 11, 15]
      target = 9

      assert Solution.two_sum(nums, target) == [0, 1]
    end
  end
end
