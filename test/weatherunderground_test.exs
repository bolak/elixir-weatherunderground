ExUnit.start


defmodule WeatherUndergroundTest do
  use ExUnit.Case

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "conditions" do
    assert {:ok, _} = WeatherUnderground.conditions("FL", "Orlando")
  end

  test "forecast" do
    assert {:ok, _} = WeatherUnderground.forecast("FL", "Orlando")
  end
end
