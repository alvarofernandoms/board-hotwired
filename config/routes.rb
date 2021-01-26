Rails.application.routes.draw do
  resources :lists do
    resources :cards, only: [:new, :create]
  end
  root to: 'lists#index'
end