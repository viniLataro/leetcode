defmodule LongestSubstringNoRepChar.Solution do
  @moduledoc """
  Given a string s, find the length of the longest substring
  without repeating characters.

  Example:
  Input: string = "abcabcbb"
  Output: 3
  Explanation: The answer is "abc", with the length of 3.
  """

  @spec length_of_longest_substring(string :: String.t()) :: integer
  def length_of_longest_substring(string) do
    string
    |> String.graphemes()
    |> Enum.reduce([[]], fn char, acc = [h | t] ->
      if char in h do
        [[char] | acc]
      else
        [[char | h] | t]
      end
    end)
    |> Enum.map(&length/1)
    |> Enum.max()
  end
end
