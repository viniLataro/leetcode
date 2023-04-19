defmodule PalindromeNumberTest do
  use ExUnit.Case

  alias PalindromeNumber.Solution

  describe "is_palindrome/1" do
    test "Return true if x is a palindrome, and false otherwise" do
      x = 121

      assert Solution.is_palindrome(x) == true

      x = 10

      assert Solution.is_palindrome(x) == false
    end
  end
end
