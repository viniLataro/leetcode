defmodule GreatestNumberOfCandies.Solution do
  @moduledoc """
  There are n kids with candies. You are given an integer array candies,
  where each candies[i] represents the number of candies the ith kid has,
  and an integer extraCandies, denoting the number of extra candies that
  you have.

  Return a boolean array result of length n, where result[i] is true if,
  after giving the ith kid all the extraCandies, they will have the
  greatest number of candies among all the kids, or false otherwise.

  Example:
  Input: candies = [2,3,5,1,3], extraCandies = 3
  Output: [true,true,true,false,true]
  Explanation: If you give all extraCandies to:
  Kid 1, they will have 2 + 3 = 5 candies, which is the greatest among the kids.
  """

  @spec kids_with_candies(candies :: [integer], extra_candies :: integer) :: [boolean]
  def kids_with_candies(candies, extra_candies) do
    Enum.map(candies, &(&1 + extra_candies >= Enum.max(candies)))
  end
end
