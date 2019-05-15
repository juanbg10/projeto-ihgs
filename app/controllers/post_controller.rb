class PostController < ApplicationController
      #Antes de qualquer ação verificar se está autenticado
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    #@user = current_user
  	#@session = user_session
  	#@authenticate = user_signed_in?
  	@posts = Post.all
    render json: @posts.to_json, status: 200

  end
  
  def show
    @post = Post.find(params[:id])
    render json: @post, status: 200
  end
  
  

  
end
