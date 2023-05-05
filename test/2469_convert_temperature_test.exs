defmodule ConvertTemperatureTest do
  use ExUnit.Case

  alias ConvertTemperature.Solution

  describe "convert_temperature/1" do
    test "convert celsius and return it as an array" do
      celsius = 36.50
      response = [309.65000, 97.70000]

      assert Solution.convert_temperature(celsius) == response

      celsius = 122.11
      response = [395.26000, 251.79800]

      assert Solution.convert_temperature(celsius) == response
    end
  end
end
