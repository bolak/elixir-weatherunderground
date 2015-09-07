defmodule WeatherUnderground do

  def city_conditions(options) do
    # Method setup.
    client_key = options[:client_key]
    state = options[:state]
    city = String.replace(options[:city]," ","_") |> String.downcase
    # API Call
    response = HTTPotion.get "http://api.wunderground.com/api/#{client_key}/conditions/q/#{state}/#{city}.json"

    JSON.decode response.body
  end

end
