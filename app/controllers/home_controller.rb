class HomeController < ApplicationController
  
  def default
    render json: [].to_json
  end
  
end
