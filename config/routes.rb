Rails.application.routes.draw do
  root 'chats#index'
  resources :chats do 
    resources :messages
  end
  devise_for :users
  resources :users
end
