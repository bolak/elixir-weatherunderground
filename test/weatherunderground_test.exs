ExUnit.start


defmodule WeatherUndergroundTest do
  use ExUnit.Case

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "conditions" do
    client_key = System.get_env("WUNDERGROUND")
    options = %{ client_key: client_key, state: "FL", city: "Orlando" }
    assert {:ok, _} = WeatherUnderground.conditions(options)
  end

end
