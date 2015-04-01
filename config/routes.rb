Rails.application.routes.draw do
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
  devise_for :users, controllers: {
      registrations: "users/registrations"
  }

  get '/profile/:id' , to: 'users#show', as: 'user_profile'
end
