Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  get '/', :to => 'home#default'
 
  
  
    # API
    get '/api/posts', :to => 'post#index'
    get '/api/posts/:id', :to => 'post#show'
    
    get '/api/patrons', :to => 'patron#index'
      get '/api/patrons/:id', :to => 'patron#show'
  
  #Caso não haja rota
 get '*a', :to => 'errors#routing'
end
