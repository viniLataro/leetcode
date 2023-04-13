defmodule MergeTwoListsTest do
  use ExUnit.Case

  alias MergeTwoLists.Solution
  alias MergeTwoLists.ListNode

  describe "merge_two_lists/2" do
    test "Return the merged linked list" do
      list1 = %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 4, next: nil}}}

      list2 = %ListNode{val: 1, next: %ListNode{val: 3, next: %ListNode{val: 4, next: nil}}}

      assert Solution.merge_two_lists(list1, list2) == [1, 1, 2, 3, 4, 4]
    end

    test "Return a empty list when both arguments are nil" do
      list1 = nil
      list2 = nil

      assert Solution.merge_two_lists(list1, list2) == []
    end

    test "Return linked list if one argument are nil" do
      list1 = %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 4, next: nil}}}
      list2 = nil

      assert Solution.merge_two_lists(list1, list2) == [1, 2, 4]
    end
  end
end
