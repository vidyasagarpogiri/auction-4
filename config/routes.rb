Rails.application.routes.draw do
  resources :items



  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about'
  post 'bids' => 'bids#create'
  get 'auction/:id' => 'auction#show'
  devise_for :models

  resources :bids
  resources :auction, param: :id

  mount ActionCable.server => '/cable'
end
