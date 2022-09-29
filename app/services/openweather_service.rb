class OpenweatherService 

    def self.get_weather(coordinates)
        response = BaseService.open_weather_conn.get("/data/2.5/onecall?lat=#{coordinates.latitude}&lon=#{coordinates.longitude}&appid=#{ENV['openweather_api_key']}&units=imperial")
        BaseService.get_json(response)
    end

end 