Rails.application.routes.draw do
  root 'chats#index'
  resources :chats
  devise_for :users
end
