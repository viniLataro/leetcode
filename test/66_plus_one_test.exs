defmodule PlusOneTest do
  use ExUnit.Case

  alias PlusOne.Solution

  describe "plus_one/1" do
    test "Increment the large integer by one and return the resulting array of digits" do
      digits1 = [1, 2, 3]
      digits2 = [4, 3, 2, 1]
      digits3 = [9]

      assert Solution.plus_one(digits1) == [1, 2, 4]
      assert Solution.plus_one(digits2) == [4, 3, 2, 2]
      assert Solution.plus_one(digits3) == [1, 0]
    end
  end
end
