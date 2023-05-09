defmodule SpiralMatrix.Solution do
  @moduledoc """
  Given an m x n matrix, return all elements of the matrix in spiral order.

  Example:

  Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
  Output: [1,2,3,6,9,8,7,4,5]
  """

  @spec spiral_order(matrix :: [[integer]]) :: [integer]
  def spiral_order([head]), do: head

  def spiral_order([head | tail]) do
    rotated =
      tail
      |> Enum.zip()
      |> Enum.reverse()
      |> Enum.map(&Tuple.to_list/1)

    head ++ spiral_order(rotated)
  end
end
