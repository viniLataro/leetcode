defmodule LongestSubstringNoRepCharTest do
  use ExUnit.Case

  alias LongestSubstringNoRepChar.Solution

  describe "length_of_longest_substring/1" do
    test "return the length os the longest substring without repeating characters" do
      assert Solution.length_of_longest_substring("abcabcbb") == 3
      assert Solution.length_of_longest_substring("bbbbb") == 1
      assert Solution.length_of_longest_substring("pwwkew") == 3
    end
  end
end
