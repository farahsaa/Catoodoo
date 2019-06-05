Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cats
  resources :schedules, only: [:new, :create, :show, :destroy]
  resources :tasks, only: [:index, :show]
  
  root to: "cats#index"
end
