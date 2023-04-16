defmodule AddTwoNumbersTest do
  use ExUnit.Case

  alias AddTwoNumbers.ListNode
  alias AddTwoNumbers.Solution

  describe "add_two_numbers/2" do
    test "Add two numbers and return as a linked list" do
      l1 = %ListNode{val: 2, next: %ListNode{val: 4, next: %ListNode{val: 3, next: nil}}}
      l2 = %ListNode{val: 5, next: %ListNode{val: 6, next: %ListNode{val: 4, next: nil}}}

      assert Solution.add_two_numbers(l1, l2) ==
               %ListNode{val: 7, next: %ListNode{val: 0, next: %ListNode{val: 8, next: nil}}}
    end
  end
end
