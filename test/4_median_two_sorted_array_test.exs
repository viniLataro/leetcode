defmodule MedianTwoSortedArrayTest do
  use ExUnit.Case

  alias MedianTwoSortedArrays.Solution

  describe "find_median_sorted_arrays/2" do
    test "Return the median of the two sorted arrays" do
      nums1 = [1, 3]
      nums2 = [2]

      assert Solution.find_median_sorted_arrays(nums1, nums2) == 2.0000

      nums1 = [1, 2]
      nums2 = [3, 4]

      assert Solution.find_median_sorted_arrays(nums1, nums2) == 2.5000
    end
  end
end
