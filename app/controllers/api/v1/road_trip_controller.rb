class Api::V1::RoadTripController < ApplicationController

#   def create
#     user = User.find_by(api_key: params[:api_key])
#     if user.nil?
#       render(json: { message: "User is unauthorized." }, status: :unauthorized)
#     else
#       roadtrip = RoadTripFacade.create_roadtrip(params[:origin], params[:destination])
      

#       render(json: RoadTripSerializer.get_roadtrip(roadtrip))
#     end
#   end
# end
  def create 
        user = User.find_by(api_key: params[:api_key]) 
        if user.present? && params[:origin] != "" && params[:destination] != "" 
            directions = MapquestFacade.get_directions(params[:origin], params[:destination])
            if directions != "Impossible"
                coordinates = MapquestFacade.get_coordinates(params[:destination])
                weather = OpenweatherFacade.get_road_trip_weather(coordinates, directions)
             
                render json: RoadtripSerializer.new(weather), status: 200
            else 
                render json: { error: "impossible" }, status: 401
            end 
        else  
            render json: { error: "bad request" }, status: 401
        end 
    end 
end
#arival weather (choose one of the solutions and extract to facade and controller)

# def create 
#         user = User.find_by(api_key: params[:api_key]) 
#         if user.present? && params[:origin] != "" && params[:destination] != "" 
#             directions = MapquestFacade.get_directions(params[:origin], params[:destination])
#             if directions != "Impossible"
#                 lat_long = MapquestFacade.get_lat_long(params[:destination])
#                 weather = WeatherFacade.get_weather(lat_long[:lat], lat_long[:lng])
             
#                 render json: RoadTripSerializer.new(weather), status: 200
#             else 
#                 render json: { error: "impossible" }, status: 401
#             end 
#         else  
#             render json: { error: "bad request" }, status: 401
#         end 
#     end 