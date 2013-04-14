MockDiscuss::Application.routes.draw do

  resources :mocks do 
    collection do
      get "my"
    end
    member do 
      post "comment"
    end
  end

  root :to => "home#index"
  
  # omniauth routes
  post '/oauth/request_token' => 'sessions#new'

  get '/auth/:provider/callback' => 'sessions#create'
  post '/auth/:provider/callback' => 'sessions#create'
  get '/auth/failure' => 'sessions#failure'

  match '/login' => 'sessions#new', :as => :login
  match '/logout' => 'sessions#destroy', :as => :logout
  
end
