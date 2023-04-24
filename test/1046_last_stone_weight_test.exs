defmodule LastStoneWeightTest do
  use ExUnit.Case

  alias LastStoneWeight.Solution

  describe "last_stone_weight/1" do
    test "Return the weight of the last remaining stone." do
      stones = [2, 7, 4, 1, 8, 1]

      assert Solution.last_stone_weight(stones) == 1
    end
  end
end
