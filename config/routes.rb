Rails.application.routes.draw do

  namespace :api do
  namespace :v1 do
    resources :users, only: [:index, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    post '/login', to: 'sessions#create'
    get '/current_user', to: 'sessions#show'
    post '/relationships/unfollow', to: 'relationships#destroy'
  end
end
end
