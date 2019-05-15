class PatronController < ApplicationController
    
          #Antes de qualquer ação verificar se está autenticado
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
  	@patrons = Patron.all
    render json: @patrons.to_json

  end
  
 def show
    @patron = Patron.find(params[:id])
    render json: @patron, status: 200
  end
    
end
