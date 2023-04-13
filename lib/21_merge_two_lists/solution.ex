defmodule MergeTwoLists.Solution do
  @moduledoc """
  You are given the heads of two sorted linked lists list1 and list2.

  Merge the two lists in a one sorted list.
  The list should be made by splicing together the nodes of the first
  two lists.

  Return the merged linked list.
  """

  alias MergeTwoLists.ListNode

  @spec merge_two_lists(list1 :: ListNode.t() | nil, list2 :: ListNode.t() | nil) ::
          ListNode.t() | nil
  def merge_two_lists(list1, list2) do
    x = list1 |> to_list()
    y = list2 |> to_list()

    (x ++ y)
    |> Enum.sort()
  end

  defp to_list(%ListNode{val: val, next: next}), do: [val | to_list(next)]

  defp to_list(nil), do: []
end
