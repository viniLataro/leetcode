defmodule TwoSum.Solution do
  @moduledoc """
  Given an array of integers nums and an integer target,
  return indices of the two numbers such that they add up to target.

  You may assume that each input would have exactly one solution,
  and you may not use the same element twice.

  You can return the answer in any order.

  Example:
  Input: nums = [2,7,11,15], target = 9
  Output: [0,1]
  Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
  """

  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    nums
    |> Enum.with_index()
    |> Enum.reduce_while(%{}, fn {num, index}, acc ->
      diff = target - num

      if Map.has_key?(acc, diff) do
        {:halt, [Map.get(acc, diff), index]}
      else
        {:cont, Map.put(acc, num, index)}
      end
    end)
  end
end
