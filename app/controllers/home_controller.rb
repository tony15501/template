class HomeController < ApplicationController
  def index
  	@homes = Home.all
  	@projects = Project.order("id DESC").limit(3)
  			
  end
end
