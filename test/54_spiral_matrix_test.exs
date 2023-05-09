defmodule SpiralMatrixTest do
  use ExUnit.Case

  alias SpiralMatrix.Solution

  describe "spiral_order/1" do
    test "given an m x n matrix, return all elements of the matrix in spiral order" do
      matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
      response = [1, 2, 3, 6, 9, 8, 7, 4, 5]

      assert Solution.spiral_order(matrix) == response

      matrix = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]
      response = [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7]

      assert Solution.spiral_order(matrix) == response
    end
  end
end
