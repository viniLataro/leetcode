defmodule ReverseIntegerTest do
  use ExUnit.Case

  alias ReverseInteger.Solution

  describe "reverse/1" do
    test "Given a integer x, return x with its digits reversed" do
      x = 123

      assert Solution.reverse(x) == 321

      x = -123

      assert Solution.reverse(x) == -321

      x = 120

      assert Solution.reverse(x) == 21
    end
  end
end
