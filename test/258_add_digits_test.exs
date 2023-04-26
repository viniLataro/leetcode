defmodule AddDigitsTest do
  use ExUnit.Case

  alias AddDigits.Solution

  describe "add_digits/1" do
    test "Given an integer, add all its digits until the result has only one digit" do
      num = 38

      assert Solution.add_digits(num) == 2

      num = 0

      assert Solution.add_digits(num) == 0
    end
  end
end
