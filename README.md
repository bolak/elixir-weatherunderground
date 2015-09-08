WeatherUnderground
==================

WIP wrapper for WeatherUnderground API.

#####First:
Set `WUNDERGROUND` environment variable to your Weather Underground API key on your system.

Currently, there are two functions `conditions` and `forecast` they each take the same parameters of **state** and **city**.

Use them as follows:

    WeatherUnderground.conditions "CA",  "Palo Alto"
   	WeatherUnderground.forecast "CA", "Palo Alto"
