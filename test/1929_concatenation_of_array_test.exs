defmodule ConcatenationOfArrayTest do
  use ExUnit.Case

  alias ConcatenationOfArray.Solution

  describe "get_concatenation/1" do
    test "return the array ans" do
      nums = [1, 2, 1]
      response = [1, 2, 1, 1, 2, 1]

      assert Solution.get_concatenation(nums) == response

      nums = [1, 3, 2, 1]
      response = [1, 3, 2, 1, 1, 3, 2, 1]

      assert Solution.get_concatenation(nums) == response
    end
  end
end
