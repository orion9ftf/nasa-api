class HomeController < ApplicationController
  
  def index
    response = HTTParty.get("https://api.nasa.gov/planetary/apod?api_key=#{ENV["API_KEY"]}")
    @response = JSON.parse(response.body)["photos"]
  end
end
