defmodule ConcatenationOfArray.Solution do
  @moduledoc """
  Given an integer array nums of length n,
  you want to create an array ans of length 2n.

  Example:

  Input: nums = [1,2,1]
  Output: [1,2,1,1,2,1]
  Explanation: The array ans is formed as follows:
  """

  @spec get_concatenation(nums :: [integer]) :: [integer]
  def get_concatenation(nums) do
    nums ++ nums
  end
end
