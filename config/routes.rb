Rails.application.routes.draw do
    resources :users
    post '/users', to: 'users#create'
    get '/users', to: 'users#index'
    get '/users/:id', to: 'users#show'
    

    resources :tweets
    post '/tweets', to: 'tweets#create'
    get '/tweets', to: 'tweets#index'
    get '/tweets/:id', to: 'tweets#show'
    delete '/tweets/:id', to: 'tweets#destroy'

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
