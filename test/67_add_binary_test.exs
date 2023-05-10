defmodule AddBinaryTest do
  use ExUnit.Case

  alias AddBinary.Solution

  describe "add_binary/2" do
    test "given two binary strings a and b, return their sum as a binary string." do
      a = "11"
      b = "1"

      assert Solution.add_binary(a, b) == "100"

      a = "1010"
      b = "1011"

      assert Solution.add_binary(a, b) == "10101"
    end
  end
end
