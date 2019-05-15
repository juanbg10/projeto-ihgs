class ErrorsController < ApplicationController
    before_action :authenticate_user!, except: [:routing]
    def routing
       render json: {error: 'Not found'}, status: 404 
    end
end
