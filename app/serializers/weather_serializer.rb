class WeatherSerializer
  include JSONAPI::Serializer
  attributes :current_weather, :hourly_weather, :daily_weather
end
  # attributes  :datetime,
  #             :sunrise,
  #             :sunset,
  #             :temperature,
  #             :feels_like,
  #             :humidity,
  #             :uvi,
  #             :visibility,
  #             :conditions,
  #             :icon

  # def self.forecast(weather)
  #   {
  #     "data":
  #       {
  #         id: nil,
  #         type: "forecast",
  #         attributes: {
  #           current_weather: {
  #             datetime: weather.datetime,
  #             sunrise: weather.sunrise,
  #             sunset: weather.sunset,
  #             temperature: weather.temperature,
  #             feels_like: weather.feels_like,
  #             humidity: weather.humidity,
  #             uvi: weather.uvi,
  #             visibility: weather.visibility,
  #             conditions: weather.conditions,
  #             icon: weather.icon
  #           },
  #           daily_weather: weather.daily_weather,
  #           hourly_weather: weather.hourly_weather
  #         }
  #       }
  #   }
  # end
# end