class CitiesController < ApplicationController
  def index
  	@cities = City.all
  end

  def show
  	@city = City.find(params[:id])
  	@keywords = @city.keywords
  	@posts = @city.posts.all
  end
end
