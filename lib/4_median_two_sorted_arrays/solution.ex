defmodule MedianTwoSortedArrays.Solution do
  @moduledoc """
  Given two sorted arrays nums1 and nums2 of size m and n respectively,
  return the median of the two sorted arrays.

  The overall run time complexity should be O(log (m+n))

  Example:
  Input: nums1 = [1,3], nums2 = [2]
  Output: 2.00000
  Explanation: merged array = [1,2,3] and median is 2.

  Input: nums1 = [1,2], nums2 = [3,4]
  Output: 2.50000
  Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
  """

  @spec find_median_sorted_arrays(nums1 :: [integer], nums2 :: [integer]) :: float
  def find_median_sorted_arrays(nums1, nums2) do
    list = Enum.sort(nums1 ++ nums2)

    cond do
      length(list) === 1 ->
        Enum.at(list, 0)

      rem(length(list), 2) === 0 ->
        start_index = trunc(length(list) / 2 - 1)
        (Enum.at(list, start_index) + Enum.at(list, start_index + 1)) / 2

      true ->
        start_index = div(length(list), 2)
        Enum.at(list, start_index)
    end
  end
end
