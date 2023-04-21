defmodule SearchInsertPositionTest do
  use ExUnit.Case

  alias SearchInsertPosition.Solution

  describe "search_insert/2" do
    test "Return the index if target is found" do
      nums = [1, 3, 5, 6]
      target = 5

      assert Solution.search_insert(nums, target) == 2
    end

    test "Return the index where it would be if it were inserted in order" do
      nums = [1, 3, 5, 6]
      target = 2

      assert Solution.search_insert(nums, target) == 1
    end
  end
end
