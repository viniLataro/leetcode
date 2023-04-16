defmodule AddTwoNumbers.Solution do
  @moduledoc """
  You are given two linked lists representing two non-negative intergers.
  The digits are stored in reverse order, and each of their nodes contains
  a single digit. Add the two numbers and return the sum as a liked list.

  You may assume the two numbers do not contain any leanding zero, except
  the number 0 itself.

  Example:

  Input: l1 = [2,4,3], l2 = [5,6,4]
  Output: [7,0,8]
  Explanation: 342 + 465 = 807.
  """

  alias AddTwoNumbers.ListNode

  @spec add_two_numbers(l1 :: ListNode.t() | nil, l2 :: ListNode.t() | nil) :: ListNode.t() | nil
  def add_two_numbers(l1, l2) do
    list1 =
      to_list(l1)
      |> Enum.reverse()
      |> Integer.undigits()

    list2 =
      to_list(l2)
      |> Enum.reverse()
      |> Integer.undigits()

    (list1 + list2)
    |> Integer.digits()
    |> Enum.reverse()
    |> to_linked_list()
  end

  defp to_list(%ListNode{val: val, next: next}), do: [val | to_list(next)]

  defp to_list(nil), do: []

  defp to_linked_list([head | tail]) do
    %ListNode{val: head, next: to_linked_list(tail)}
  end

  defp to_linked_list(_), do: nil
end
