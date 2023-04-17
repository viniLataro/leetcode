defmodule GreatestNumberOfCandiesTest do
  use ExUnit.Case

  alias GreatestNumberOfCandies.Solution

  describe "kids_with_candies/2" do
    test "Return a boolean array result, where result[i] is true if they'll have the greatest number among others" do
      candies = [2, 3, 5, 1, 3]
      extra_candies = 3

      assert Solution.kids_with_candies(candies, extra_candies) ==
               [true, true, true, false, true]

      candies = [4, 2, 1, 1, 2]
      extra_candies = 1

      assert Solution.kids_with_candies(candies, extra_candies) ==
               [true, false, false, false, false]

      candies = [12, 1, 12]
      extra_candies = 10

      assert Solution.kids_with_candies(candies, extra_candies) ==
               [true, false, true]
    end
  end
end
