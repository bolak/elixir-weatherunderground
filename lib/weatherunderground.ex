defmodule WeatherUnderground do
  @client_key System.get_env("WUNDERGROUND")

  def conditions(state, city) do
    { state, city } = parse_options(state, city)
    response = HTTPotion.get "http://api.wunderground.com/api/#{@client_key}/conditions/q/#{state}/#{city}.json"
    JSON.decode response.body
  end

  def forecast(state, city) do
    { state, city } = parse_options(state, city)
    response = HTTPotion.get "http://api.wunderground.com/api/#{@client_key}/forecast/q/#{state}/#{city}.json"
    JSON.decode response.body
  end

  def parse_options(state,city) do
    state = state |> String.upcase
    city = String.replace(city," ","_") |> String.downcase
    {state, city}
  end

end
