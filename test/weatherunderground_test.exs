ExUnit.start


defmodule WeatherUndergroundTest do
  use ExUnit.Case

  test "the truth" do
    assert 1 + 1 == 2
  end
  
  test "conditions" do
    {_, response} = WeatherUnderground.conditions("FL", "Orlando")
    assert nil = response["error"]
  end

  test "forecast" do
    {_, response} = WeatherUnderground.forecast("FL", "Orlando")
    assert nil = response["error"]
  end
end
