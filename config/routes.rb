Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root 'tweets#index'

  resources :tweets

  resources :homes do
    get 'profile'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
