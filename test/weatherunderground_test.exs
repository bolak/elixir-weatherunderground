ExUnit.start


defmodule WeatherUndergroundTest do
  use ExUnit.Case

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "city_conditions united states" do
    options = %{ client_key: "c53f1849879a17da", state: "FL", city: "Orlando" }
    assert {:ok, _} = WeatherUnderground.city_conditions(options)
  end

  test "city_conditions international" do
    options = %{ client_key: "c53f1849879a17da", city: "Oviedo" }
    assert {:ok, _} = WeatherUnderground.city_conditions(options)
  end
end
