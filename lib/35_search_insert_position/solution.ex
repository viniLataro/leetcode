defmodule SearchInsertPosition.Solution do
  @moduledoc """
  Given a sorted array of distinct integers and a target value,
  return the index if the target is found.
  If not, return the index where it would be if it were inserted in order.

  You must write an algorithm with O(log n) runtime complexity.
  """

  @spec search_insert(nums :: [integer], target :: integer) :: integer
  def search_insert(nums, target) do
    case Enum.any?(nums, fn x -> x == target end) do
      true ->
        Enum.find_index(nums, fn x -> x == target end)

      false ->
        [target | nums]
        |> Enum.sort()
        |> Enum.find_index(fn x -> x == target end)
    end
  end
end
