Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'geo_marks#index'
  resources :geo_marks do
    post 'upvote', on: :member
    post 'share', on: :member
  end
end
