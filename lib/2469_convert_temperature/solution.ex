defmodule ConvertTemperature.Solution do
  @moduledoc """
  convert Celsius into Kelvin and Fahrenheit and
  return it as an array ans = [kelvin, fahrenheit]

  Note that:
  Kelvin = Celsius + 273.15
  Fahrenheit = Celsius * 1.80 + 32.00

  Example 1:

  Input: celsius = 36.50
  Output: [309.65000,97.70000]

  Explanation: Temperature at 36.50 Celsius converted in Kelvin is 309.65
  and converted in Fahrenheit is 97.70.
  """

  @spec convert_temperature(celsius :: float) :: [float]
  def convert_temperature(celsius) do
    kelvin = celsius + 273.15
    fahrenheit = celsius * 1.80 + 32.00

    [kelvin, fahrenheit]
  end
end
