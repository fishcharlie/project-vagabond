class WelcomeController < ApplicationController
  def index
  	@cities = City.all 
  
  end

  def test
  	render "show.temp.html.erb"
  end

end
